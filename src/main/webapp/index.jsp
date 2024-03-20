<!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en-US"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><title>Building a landing zone - AWS Prescriptive Guidance</title><meta name="viewport" content="width=device-width,initial-scale=1" /><meta name="assets_root" content="/assets" /><meta name="target_state" content="building-landing-zones" /><meta name="default_state" content="building-landing-zones" /><link rel="icon" type="image/ico" href="/assets/images/favicon.ico" /><link rel="shortcut icon" type="image/ico" href="/assets/images/favicon.ico" /><link rel="canonical" href="https://docs.aws.amazon.com/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" /><meta name="description" content="The two main options for building a landing zone on AWS are AWS Control Tower, which is a managed AWS service, or a custom-built landing zone." /><meta name="deployment_region" content="IAD" /><meta name="product" content="AWS Prescriptive Guidance" /><meta name="guide" content="Setting up a secure and scalable multi-account AWS environment" /><meta name="abstract" content="An AWS Prescriptive Guidance guide about landing zones and a multi-account AWS environment." /><meta name="guide-locale" content="en_us" /><meta name="tocs" content="toc-contents.json" /><link rel="canonical" href="https://docs.aws.amazon.com/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" /><link rel="alternative" href="https://docs.aws.amazon.com/id_id/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="id-id" /><link rel="alternative" href="https://docs.aws.amazon.com/id_id/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="id" /><link rel="alternative" href="https://docs.aws.amazon.com/de_de/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="de-de" /><link rel="alternative" href="https://docs.aws.amazon.com/de_de/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="de" /><link rel="alternative" href="https://docs.aws.amazon.com/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="en-us" /><link rel="alternative" href="https://docs.aws.amazon.com/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="en" /><link rel="alternative" href="https://docs.aws.amazon.com/es_es/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="es-es" /><link rel="alternative" href="https://docs.aws.amazon.com/es_es/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="es" /><link rel="alternative" href="https://docs.aws.amazon.com/fr_fr/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="fr-fr" /><link rel="alternative" href="https://docs.aws.amazon.com/fr_fr/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="fr" /><link rel="alternative" href="https://docs.aws.amazon.com/it_it/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="it-it" /><link rel="alternative" href="https://docs.aws.amazon.com/it_it/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="it" /><link rel="alternative" href="https://docs.aws.amazon.com/ja_jp/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="ja-jp" /><link rel="alternative" href="https://docs.aws.amazon.com/ja_jp/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="ja" /><link rel="alternative" href="https://docs.aws.amazon.com/ko_kr/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="ko-kr" /><link rel="alternative" href="https://docs.aws.amazon.com/ko_kr/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="ko" /><link rel="alternative" href="https://docs.aws.amazon.com/pt_br/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="pt-br" /><link rel="alternative" href="https://docs.aws.amazon.com/pt_br/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="pt" /><link rel="alternative" href="https://docs.aws.amazon.com/zh_cn/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="zh-cn" /><link rel="alternative" href="https://docs.aws.amazon.com/zh_tw/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="zh-tw" /><link rel="alternative" href="https://docs.aws.amazon.com/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" hreflang="x-default" /><meta name="feedback-item" content="ProServe Enterprise GPS" /><meta name="this_doc_product" content="AWS Prescriptive Guidance" /><meta name="this_doc_guide" content="Setting up a secure and scalable multi-account AWS environment" /><script defer="" src="/assets/r/vendor4.js?version=2021.12.02"></script><script defer="" src="/assets/r/vendor3.js?version=2021.12.02"></script><script defer="" src="/assets/r/vendor1.js?version=2021.12.02"></script><script defer="" src="/assets/r/awsdocs-common.js?version=2021.12.02"></script><script defer="" src="/assets/r/awsdocs-doc-page.js?version=2021.12.02"></script><link href="/assets/r/vendor4.css?version=2021.12.02" rel="stylesheet" /><link href="/assets/r/awsdocs-common.css?version=2021.12.02" rel="stylesheet" /><link href="/assets/r/awsdocs-doc-page.css?version=2021.12.02" rel="stylesheet" /><script async="" id="awsc-panorama-bundle" type="text/javascript" src="https://prod.pa.cdn.uis.awsstatic.com/panorama-nav-init.js" data-config="{'appEntity':'aws-documentation','region':'us-east-1','service':'prescriptive-guidance'}"></script><meta id="panorama-serviceSubSection" value="Setting up a secure and scalable multi-account AWS environment" /><meta id="panorama-serviceConsolePage" value="Building a landing zone" /></head><body class="awsdocs awsui"><div class="awsdocs-container"><awsdocs-header></awsdocs-header><awsui-app-layout id="app-layout" class="awsui-util-no-gutters" ng-controller="ContentController as $ctrl" header-selector="awsdocs-header" navigation-hide="false" navigation-width="$ctrl.navWidth" navigation-open="$ctrl.navOpen" navigation-change="$ctrl.onNavChange($event)" tools-hide="$ctrl.hideTools" tools-width="$ctrl.toolsWidth" tools-open="$ctrl.toolsOpen" tools-change="$ctrl.onToolsChange($event)"><div id="guide-toc" dom-region="navigation"><awsdocs-toc></awsdocs-toc></div><div id="main-column" dom-region="content" tabindex="-1"><awsdocs-view class="awsdocs-view"><div id="awsdocs-content"><head><title>Building a landing zone - AWS Prescriptive Guidance</title><meta name="pdf" content="/pdfs/prescriptive-guidance/latest/migration-aws-environment/migration-aws-environment.pdf#building-landing-zones" /><meta name="rss" content="migration-aws-environment.rss" /><meta name="feedback" content="https://docs.aws.amazon.com/forms/aws-doc-feedback?hidden_service_name=ProServe%20Enterprise%20GPS&amp;topic_url=https://docs.aws.amazon.com/en_us/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" /><meta name="feedback-yes" content="feedbackyes.html?topic_url=https://docs.aws.amazon.com/en_us/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" /><meta name="feedback-no" content="feedbackno.html?topic_url=https://docs.aws.amazon.com/en_us/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html" /><meta name="keywords" content="AWS prescriptive guidance,landing zone,multi-account,cloud adoption,migration" /><script type="application/ld+json">
{
    "@context" : "https://schema.org",
    "@type" : "BreadcrumbList",
    "itemListElement" : [
      {
        "@type" : "ListItem",
        "position" : 1,
        "name" : "AWS",
        "item" : "https://aws.amazon.com"
      },
      {
        "@type" : "ListItem",
        "position" : 2,
        "name" : "AWS Prescriptive Guidance",
        "item" : "https://aws.amazon.com/prescriptive-guidance/"
      },
      {
        "@type" : "ListItem",
        "position" : 3,
        "name" : "Setting up a secure and scalable multi-account AWS environment",
        "item" : "https://docs.aws.amazon.com/prescriptive-guidance/latest/migration-aws-environment"
      },
      {
        "@type" : "ListItem",
        "position" : 4,
        "name" : "Building a landing zone",
        "item" : "https://docs.aws.amazon.com/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html"
      }
    ]
}
</script></head><body><div id="main"><div style="display: none"><a href="/pdfs/prescriptive-guidance/latest/migration-aws-environment/migration-aws-environment.pdf#building-landing-zones" target="_blank" rel="noopener noreferrer" title="Open PDF"></a></div><div id="breadcrumbs" class="breadcrumb"><a href="https://aws.amazon.com">AWS</a><a href="/index.html">Documentation</a><a href="https://aws.amazon.com/prescriptive-guidance/">AWS Prescriptive Guidance</a><a href="welcome.html">Setting up a secure and scalable multi-account AWS environment</a></div><div id="page-toc-src"><a href="#aws-control-tower">AWS Control Tower</a><a href="#customized-lz">Custom-built landing zone</a><a href="#recommended-approach">Recommended approach</a></div><div id="main-content" class="awsui-util-container"><div id="main-col-body"><awsdocs-language-banner data-service="$ctrl.pageService"></awsdocs-language-banner><h1 class="topictitle" id="building-landing-zones">Building a landing zone</h1><div class="awsdocs-page-header-container"><awsdocs-page-header></awsdocs-page-header><awsdocs-filter-selector id="awsdocs-filter-selector"></awsdocs-filter-selector></div><p>You have a few options for creating your landing zone on AWS. You can choose a managed
    service to orchestrate your environment or work with a partner to build your own. AWS offers
      <a href="https://aws.amazon.com/controltower/" rel="noopener noreferrer" target="_blank"><span>AWS Control Tower</span><awsui-icon class="awsdocs-link-icon" name="external"></awsui-icon></a>, a managed service. We recommend
    new customers start off with AWS Control Tower. However, it is important to understand the differences
    and capabilities of each approach so you can make the best decision for your organization. </p><p>Options for landing zones on AWS:</p><div class="mediaobject">
     
      <img src="/images/prescriptive-guidance/latest/migration-aws-environment/images/lz01.png" class="aws-docs-img-whiteBg aws-docs-img-padding" alt="&#xA;      Options for landing zones on AWS&#xA;    " />
     
     
  </div><p>Delivery mechanism: </p><div class="mediaobject">
     
      <img src="/images/prescriptive-guidance/latest/migration-aws-environment/images/lz02.png" class="aws-docs-img-whiteBg aws-docs-img-padding" alt="&#xA;      Delivery mechanism showing the differences between AWS Control Tower and a customized landing&#xA;        zone that is managed by the customer or partner&#xA;    " />
     
     

  </div><p>Benefits and trade-offs for each approach: </p><div class="table-container"><div class="table-contents"><table id="w117aab9c15"><thead>
        <tr>
          <th>Solution</th>
          <th>Benefits</th>
          <th>Trade-offs</th>
        </tr>
      </thead>
        <tr>
          <td tabindex="-1">
            <p>AWS Control Tower</p>
          </td>
          <td tabindex="-1">
            <div class="itemizedlist">
               
               
               
               

            <ul class="itemizedlist"><li class="listitem">
                <p>Fully managed service </p>
              </li><li class="listitem">
                <p>AWS-provided guardrails and compliance policies applied by default </p>
              </li><li class="listitem">
                <p>Central dashboard for monitoring and compliance status </p>
              </li><li class="listitem">
                <p>Account factory for provisioning new accounts</p>
              </li></ul></div>
          </td>
          <td tabindex="-1">
            <div class="itemizedlist">
               
               

            <ul class="itemizedlist"><li class="listitem">
                <p>Extensibility and customization are provided by the <a href="https://aws.amazon.com/solutions/customizations-for-aws-control-tower/" rel="noopener noreferrer" target="_blank"><span>Customizations for
                    AWS Control Tower solution</span><awsui-icon class="awsdocs-link-icon" name="external"></awsui-icon></a>. </p>
              </li><li class="listitem">
                <p>AWS Control Tower is supported in the AWS Regions shown in the <a href="https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/" rel="noopener noreferrer" target="_blank"><span>AWS Regional
                    services list</span><awsui-icon class="awsdocs-link-icon" name="external"></awsui-icon></a>.</p>
              </li></ul></div>
          </td>
        </tr>
        <tr>
          <td tabindex="-1">
            <p><a href="https://aws.amazon.com/organizations/" rel="noopener noreferrer" target="_blank"><span>AWS Organizations</span><awsui-icon class="awsdocs-link-icon" name="external"></awsui-icon></a> with a customer or
              partner-built custom solution</p>
          </td>
          <td tabindex="-1">
            <p>Custom-built solution</p>
          </td>
          <td tabindex="-1">
            <div class="itemizedlist">
               
               

            <ul class="itemizedlist"><li class="listitem">
                <p>Customer or partner owns all development and coding. </p>
              </li><li class="listitem">
                <p>Customer or partner is responsible for integration and implementation.</p>
              </li></ul></div>
          </td>
        </tr>
      </table></div></div><p>All multi-account environment offerings are powered by AWS Organizations. AWS Organizations provides the
    underlying infrastructure and capabilities for you to build and manage your AWS environment.
    With AWS Organizations, you can take the multi-account strategy guidance provided by AWS and customize
    your environment yourself to best fit your business needs. If you are an existing customer and
    you’re happy with your current AWS Organizations implementation, you should continue to operate your
    current AWS environment.</p>
    <h2 id="aws-control-tower">AWS Control Tower</h2>
    <p>AWS Control Tower runs as an AWS managed service. When you’re looking for a pre-packaged
      environment solution out of the box, you can use AWS Control Tower for prescriptive guidance and a
      fully managed environment. The service sets up a landing zone based on multi-account best
      practices, centralizes identity and access management, and establishes pre-configured
      governance rules for security and compliance. </p>

    <div class="mediaobject">
       
        <img src="/images/prescriptive-guidance/latest/migration-aws-environment/images/aws-control-tower.png" class="aws-docs-img-whiteBg aws-docs-img-padding" alt="&#xA;        AWS Control Tower setup&#xA;      " />
       
       

    </div>
    <p>AWS Control Tower automates the setup of a new landing zone using best practices, blueprints for
      identity, federated access, and account structure. Some of the blueprints implemented on
      AWS Control Tower include: </p>
    <div class="itemizedlist">
       
       
       
       
    <ul class="itemizedlist"><li class="listitem">
        <p>A multi-account environment using AWS Organizations</p>
      </li><li class="listitem">
        <p>Cross-account security audits using AWS Identity and Access Management (IAM) and AWS IAM Identity Center</p>
      </li><li class="listitem">
        <p>Identity management using the Identity Center default directory</p>
      </li><li class="listitem">
        <p>Centralized logging from AWS CloudTrail, and AWS Config stored in Amazon Simple Storage Service (Amazon S3)</p>
      </li></ul></div>

    <p>Guardrails are high-level rules that provide ongoing governance for your overall AWS
      environment. Guardrails can be both preventive or detective. Preventive guardrails are
      implemented using service control policies (SCPs), which are a part of AWS Organizations. Detective
      guardrails are implemented using AWS Config Rules and AWS Lambda functions. Examples of AWS Control Tower
      guardrails include:</p>

    <div class="itemizedlist">
       
       
       
       
    <ul class="itemizedlist"><li class="listitem">
        <p>Disallow creation of access keys for the root user</p>
      </li><li class="listitem">
        <p>Disallow internet connection through RDP</p>
      </li><li class="listitem">
        <p>Disallow public write access to S3 buckets</p>
      </li><li class="listitem">
        <p>Disallow Amazon Elastic Block Store (Amazon EBS) volumes that are unattached to an Amazon Elastic Compute Cloud (Amazon EC2)
          instance</p>
      </li></ul></div>

    <div class="awsdocs-note"><div class="awsdocs-note-title"><awsui-icon name="status-info" variant="link"></awsui-icon><h6>Note</h6></div><div class="awsdocs-note-text"><p>AWS Control Tower is a starting point for a landing zone. You need to determine your strategy for
        networking, access management, and security based on your unique requirements as you build
        out your landing zone.</p></div></div>

   
    <h2 id="customized-lz">Custom-built landing zone</h2>

    <p>You can choose to build your own customized landing zone solution. In this case, you have
      to implement the baseline environment to get started with identity and access management,
      governance, data security, network design, and logging. We recommend this approach if you want
      to build all of your environment components from scratch, or if you have requirements that
      only a custom solution can support. You must have enough expertise in AWS to manage,
      upgrade, maintain, and operate the solution once it’s deployed. </p>
    <p>However, before you move forward with a customized landing zone design, we recommend that
      you consider AWS Control Tower first. AWS Control Tower has been customized and used by many customers across
      industries to successfully deploy workloads on AWS. If AWS Control Tower does not meet your needs for
      customization, try <a href="https://aws.amazon.com/solutions/aws-landing-zone/" rel="noopener noreferrer" target="_blank"><span>AWS Landing
        Zone</span><awsui-icon class="awsdocs-link-icon" name="external"></awsui-icon></a>. This is a landing zone implementation based on AWS CloudFormation. </p>

   
    <h2 id="recommended-approach">Recommended approach</h2>
    <p>We recommend that all new landing zones start with AWS Control Tower. AWS Control Tower helps you build out
      an initial prescriptive landing zone configuration, use out-of-the-box <a href="https://docs.aws.amazon.com/controltower/latest/userguide/guardrails.html">guardrails</a>
      and blueprints, and create new accounts using <a href="https://docs.aws.amazon.com/controltower/latest/userguide/account-factory.html">AWS Control Tower account factory</a>. </p>
    <p>If you require custom guardrails and blueprints, see <a href="https://aws.amazon.com/solutions/customizations-for-aws-control-tower/" rel="noopener noreferrer" target="_blank"><span>Customizations for AWS Control Tower</span><awsui-icon class="awsdocs-link-icon" name="external"></awsui-icon></a>
      for customizing your AWS Control Tower landing zone. This reference implementation integrates with
      AWS Control Tower lifecycle events and notifications feature to push landing zone customizations in
      response to applicable AWS Control Tower lifecycle events.</p>
    <p>If you are an existing AWS Control Tower customer, you have both native AWS Control Tower lifecycle events
      and the reference implementation for customization available to support your customization
      needs. All you need to do is deploy the reference implementation’s AWS CloudFormation template into your
      existing AWS Control Tower account. </p>
  <awsdocs-copyright class="copyright-print"></awsdocs-copyright><awsdocs-thumb-feedback right-edge="{{$ctrl.thumbFeedbackRightEdge}}"></awsdocs-thumb-feedback></div><noscript><div><div><div><div id="js_error_message"><p><img src="https://d1ge0kk1l5kms0.cloudfront.net/images/G/01/webservices/console/warning.png" alt="Warning" /> <strong>Javascript is disabled or is unavailable in your browser.</strong></p><p>To use the Amazon Web Services Documentation, Javascript must be enabled. Please refer to your browser's Help pages for instructions.</p></div></div></div></div></noscript><div id="main-col-footer" class="awsui-util-font-size-0"><div id="doc-conventions"><a target="_top" href="/general/latest/gr/docconventions.html">Document Conventions</a></div><div class="prev-next"><div id="previous" class="prev-link" accesskey="p" href="./understanding-landing-zones.html">What is a landing zone?</div><div id="next" class="next-link" accesskey="n" href="./whats-next.html">Next steps</div></div></div><awsdocs-page-utilities></awsdocs-page-utilities></div><div id="quick-feedback-yes" style="display: none;"><div class="title">Did this page help you? - Yes</div><div class="content"><p>Thanks for letting us know we're doing a good job!</p><p>If you've got a moment, please tell us what we did right so we can do more of it.</p><p><awsui-button id="fblink" rel="noopener noreferrer" target="_blank" text="Feedback" click="linkClick($event)" href="https://docs.aws.amazon.com/forms/aws-doc-feedback?hidden_service_name=ProServe Enterprise GPS&amp;topic_url=https://docs.aws.amazon.com/en_us/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html"></awsui-button></p></div></div><div id="quick-feedback-no" style="display: none;"><div class="title">Did this page help you? - No</div><div class="content"><p>Thanks for letting us know this page needs work. We're sorry we let you down.</p><p>If you've got a moment, please tell us how we can make the documentation better.</p><p><awsui-button id="fblink" rel="noopener noreferrer" target="_blank" text="Feedback" click="linkClick($event)" href="https://docs.aws.amazon.com/forms/aws-doc-feedback?hidden_service_name=ProServe Enterprise GPS&amp;topic_url=https://docs.aws.amazon.com/en_us/prescriptive-guidance/latest/migration-aws-environment/building-landing-zones.html"></awsui-button></p></div></div></div></body></div></awsdocs-view><div class="page-loading-indicator" id="page-loading-indicator"><awsui-spinner size="large"></awsui-spinner></div></div><div id="tools-panel" dom-region="tools"><awsdocs-tools-panel id="awsdocs-tools-panel"></awsdocs-tools-panel></div></awsui-app-layout><awsdocs-cookie-banner class="doc-cookie-banner"></awsdocs-cookie-banner></div></body></html>

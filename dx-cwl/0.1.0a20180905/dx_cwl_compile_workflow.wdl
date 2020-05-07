version 1.0

task DxCwlCompileWorkflow {
  input {
    String tokenToken
    String projectProject
    String rootdirRootdir
    Array[String]+ assetsAssets
    Array[String]+ bundledBundled
    String instanceInstanceProvider
    String? workflowWorkflow
  }
  command <<<
    dx-cwl compile-workflow \
      ~{workflowWorkflow} \
      ~{if defined(tokenToken) then ("--token " +  '"' + tokenToken + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(rootdirRootdir) then ("--rootdir " +  '"' + rootdirRootdir + '"') else ""} \
      ~{if defined(assetsAssets) then ("--assets " +  '"' + assetsAssets + '"') else ""} \
      ~{if defined(bundledBundled) then ("--bundled " +  '"' + bundledBundled + '"') else ""} \
      ~{if defined(instanceInstanceProvider) then ("--instance-provider " +  '"' + instanceInstanceProvider + '"') else ""}
  >>>
}
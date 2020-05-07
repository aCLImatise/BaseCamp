version 1.0

task DxCwlCompileTool {
  input {
    String tokenToken
    String projectProject
    String rootdirRootdir
    Array[String]+ assetsAssets
    Array[String]+ bundledBundled
    String extraExtraDisk
    String instanceInstanceProvider
    String? toolTool
  }
  command <<<
    dx-cwl compile-tool \
      ~{toolTool} \
      ~{if defined(tokenToken) then ("--token " +  '"' + tokenToken + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(rootdirRootdir) then ("--rootdir " +  '"' + rootdirRootdir + '"') else ""} \
      ~{if defined(assetsAssets) then ("--assets " +  '"' + assetsAssets + '"') else ""} \
      ~{if defined(bundledBundled) then ("--bundled " +  '"' + bundledBundled + '"') else ""} \
      ~{if defined(extraExtraDisk) then ("--extradisk " +  '"' + extraExtraDisk + '"') else ""} \
      ~{if defined(instanceInstanceProvider) then ("--instance-provider " +  '"' + instanceInstanceProvider + '"') else ""}
  >>>
}
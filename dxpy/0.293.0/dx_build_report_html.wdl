version 1.0

task DxBuildReportHtml {
  input {
    String remoteRemote
    String localLocal
    String widthWidth
    String heightHeight
    String? srcSrc
  }
  command <<<
    dx-build-report-html \
      ~{srcSrc} \
      ~{if defined(remoteRemote) then ("--remote " +  '"' + remoteRemote + '"') else ""} \
      ~{if defined(localLocal) then ("--local " +  '"' + localLocal + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""}
  >>>
}
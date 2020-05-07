version 1.0

task BpNetinstall.pl {
  input {
    Boolean devDev
    String buildBuildParamStr
    String installInstallParamStr
    Boolean bioperlBioperlPath
    Boolean skipSkipStart
  }
  command <<<
    bp_netinstall.pl \
      ~{true="--dev" false="" devDev} \
      ~{if defined(buildBuildParamStr) then ("--build_param_str " +  '"' + buildBuildParamStr + '"') else ""} \
      ~{if defined(installInstallParamStr) then ("--install_param_str " +  '"' + installInstallParamStr + '"') else ""} \
      ~{true="--bioperl_path" false="" bioperlBioperlPath} \
      ~{true="--skip_start" false="" skipSkipStart}
  >>>
}
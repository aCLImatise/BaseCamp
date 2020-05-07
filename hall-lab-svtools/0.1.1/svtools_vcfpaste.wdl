version 1.0

task SvtoolsVcfpaste {
  input {
    String masterMaster
    String? vcfVcf
  }
  command <<<
    svtools vcfpaste \
      ~{vcfVcf} \
      ~{if defined(masterMaster) then ("--master " +  '"' + masterMaster + '"') else ""}
  >>>
}
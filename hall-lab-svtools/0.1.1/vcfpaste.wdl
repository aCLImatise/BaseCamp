version 1.0

task Vcfpaste {
  input {
    String masterMaster
    String? vcfVcf
  }
  command <<<
    vcfpaste \
      ~{vcfVcf} \
      ~{if defined(masterMaster) then ("--master " +  '"' + masterMaster + '"') else ""}
  >>>
}
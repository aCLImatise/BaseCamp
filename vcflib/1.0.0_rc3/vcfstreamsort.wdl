version 1.0

task Vcfstreamsort {
  input {
    String windowWindow
    Boolean allAll
    String? vcfVcf
    File? fileFile
  }
  command <<<
    vcfstreamsort \
      ~{vcfVcf} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{true="--all" false="" allAll} \
      ~{fileFile}
  >>>
}
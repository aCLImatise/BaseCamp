version 1.0

task VcfShuffleCols {
  input {
    File? template
    File file_dot_vcf_do_tgz
  }
  command <<<
    vcf-shuffle-cols \
      ~{file_dot_vcf_do_tgz} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""}
  >>>
  parameter_meta {
    template: "The file with the correct order of the columns."
    file_dot_vcf_do_tgz: ""
  }
}
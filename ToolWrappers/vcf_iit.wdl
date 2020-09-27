version 1.0

task VcfIit {
  input {
    Boolean? more_options
    Boolean? options
  }
  command <<<
    vcf_iit \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}
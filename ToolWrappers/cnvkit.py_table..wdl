version 1.0

task CnvkitpyTable {
  input {
    String cnv_kit_do_tpy
  }
  command <<<
    cnvkit_py table_ \
      ~{cnv_kit_do_tpy}
  >>>
  parameter_meta {
    cnv_kit_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}
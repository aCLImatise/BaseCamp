version 1.0

task Lefse2circladerpy {
  input {
    String? with_label
  }
  command <<<
    lefse2circlader_py \
      ~{if defined(with_label) then ("-l " +  '"' + with_label + '"') else ""}
  >>>
  parameter_meta {
    with_label: "with label"
  }
  output {
    File out_stdout = stdout()
  }
}
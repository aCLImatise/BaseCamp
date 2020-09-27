version 1.0

task RgthintEvaluation {
  input {
    File? tfbs_file
  }
  command <<<
    rgt_hint evaluation \
      ~{if defined(tfbs_file) then ("--tfbs-file " +  '"' + tfbs_file + '"') else ""}
  >>>
  parameter_meta {
    tfbs_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
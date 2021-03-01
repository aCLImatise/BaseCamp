version 1.0

task NaspOutputFolder {
  input {
    String? config
    String nasp
    String? reference_fast_a
    String? output_folder
  }
  command <<<
    nasp output_folder \
      ~{nasp} \
      ~{reference_fast_a} \
      ~{output_folder} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: ""
    nasp: ""
    reference_fast_a: ""
    output_folder: ""
  }
  output {
    File out_stdout = stdout()
  }
}
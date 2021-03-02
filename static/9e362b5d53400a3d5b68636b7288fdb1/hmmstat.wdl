version 1.0

task Hmmstat {
  input {
    Boolean? options
    String hmm_file
  }
  command <<<
    hmmstat \
      ~{hmm_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    hmm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
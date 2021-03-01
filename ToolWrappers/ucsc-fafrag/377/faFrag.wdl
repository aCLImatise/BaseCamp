version 1.0

task FaFrag {
  input {
    Boolean? mixed
    String in_dot_fa
    String start
    String end
  }
  command <<<
    faFrag \
      ~{in_dot_fa} \
      ~{start} \
      ~{end} \
      ~{if (mixed) then "-mixed" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mixed: "- preserve mixed-case in FASTA file"
    in_dot_fa: ""
    start: ""
    end: ""
  }
  output {
    File out_stdout = stdout()
  }
}
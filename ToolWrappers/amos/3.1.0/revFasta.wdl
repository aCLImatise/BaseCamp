version 1.0

task RevFasta {
  input {
    String? reverse_complement_d
  }
  command <<<
    revFasta \
      ~{if defined(reverse_complement_d) then ("-i " +  '"' + reverse_complement_d + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reverse_complement_d: "Reverse complement the specified id only"
  }
  output {
    File out_stdout = stdout()
  }
}
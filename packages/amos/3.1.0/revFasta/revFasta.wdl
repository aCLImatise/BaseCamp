version 1.0

task RevFasta {
  input {
    String? reverse_complement_specified
  }
  command <<<
    revFasta \
      ~{if defined(reverse_complement_specified) then ("-i " +  '"' + reverse_complement_specified + '"') else ""}
  >>>
  parameter_meta {
    reverse_complement_specified: "Reverse complement the specified id only"
  }
  output {
    File out_stdout = stdout()
  }
}
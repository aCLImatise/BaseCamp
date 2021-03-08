version 1.0

task RawN50 {
  input {
    Int? ref_length
    String contigs_dot_fa
  }
  command <<<
    raw_n50 \
      ~{contigs_dot_fa} \
      ~{if defined(ref_length) then ("--ref_length " +  '"' + ref_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref_length: "(=0)"
    contigs_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task VarlociraptorDecodephred {
  input {
    String var_loci_raptor
  }
  command <<<
    varlociraptor decode_phred \
      ~{var_loci_raptor}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_loci_raptor: ""
  }
  output {
    File out_stdout = stdout()
  }
}
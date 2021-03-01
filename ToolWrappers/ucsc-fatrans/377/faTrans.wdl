version 1.0

task FaTrans {
  input {
    String? stop
    String? offset
    Boolean? cds_upper
    String in_dot_fa
  }
  command <<<
    faTrans \
      ~{in_dot_fa} \
      ~{if defined(stop) then ("-stop " +  '"' + stop + '"') else ""} \
      ~{if defined(offset) then ("-offset " +  '"' + offset + '"') else ""} \
      ~{if (cds_upper) then "-cdsUpper" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    stop: "at first stop codon (otherwise puts in Z for stop codons)"
    offset: "start at a particular offset."
    cds_upper: "- cds is in upper case"
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}
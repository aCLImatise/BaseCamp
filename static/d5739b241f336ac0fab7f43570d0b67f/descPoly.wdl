version 1.0

task DescPoly {
  input {
    Boolean? infile_sequence_data
    Boolean? specify_sequence_count
  }
  command <<<
    descPoly \
      ~{if (infile_sequence_data) then "-i" else ""} \
      ~{if (specify_sequence_count) then "-o" else ""}
  >>>
  parameter_meta {
    infile_sequence_data: "infile (for sequence data in FASTA format)"
    specify_sequence_count: "[integer]    specify the sequence (i.e. count from one) of the outgroup, if present in data"
  }
  output {
    File out_stdout = stdout()
  }
}
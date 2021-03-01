version 1.0

task RgtTDFAutobinding {
  input {
    Boolean? input_fasta_file
    Boolean? define_minimum_length
    Boolean? set_maximal_errorrate
    Boolean? abo
  }
  command <<<
    rgt_TDF autobinding \
      ~{if (input_fasta_file) then "-i" else ""} \
      ~{if (define_minimum_length) then "-l" else ""} \
      ~{if (set_maximal_errorrate) then "-e" else ""} \
      ~{if (abo) then "-abo" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fasta_file: "Input FASTA file of the whole genome"
    define_minimum_length: "[Triplexes] Define the minimum length of triplex (default: 20)"
    set_maximal_errorrate: "[Triplexes] Set the maximal error-rate in % tolerated (default:\\n20)"
    abo: "[Triplexes] Autobinding offset. Maximum offset between\\nautobinding regions (must be positive, >= 0), e.g., 1 for\\nregions to be at least adjacent, 2 if there can be 1 bp space\\nbetween segments, etc. (default: 5)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
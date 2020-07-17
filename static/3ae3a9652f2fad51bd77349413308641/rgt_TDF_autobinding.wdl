version 1.0

task RgtTDFAutobinding {
  input {
    Boolean? input_fasta_file
    Boolean? define_minimum_length
    Boolean? set_maximal_errorrate
    Boolean? abo
  }
  command <<<
    rgt-TDF autobinding \
      ~{true="-i" false="" input_fasta_file} \
      ~{true="-l" false="" define_minimum_length} \
      ~{true="-e" false="" set_maximal_errorrate} \
      ~{true="-abo" false="" abo}
  >>>
  parameter_meta {
    input_fasta_file: "Input FASTA file of the whole genome"
    define_minimum_length: "[Triplexes] Define the minimum length of triplex (default: 20)"
    set_maximal_errorrate: "[Triplexes] Set the maximal error-rate in % tolerated (default: 20)"
    abo: "[Triplexes] Autobinding offset. Maximum offset between autobinding regions (must be positive, >= 0), e.g., 1 for regions to be at least adjacent, 2 if there can be 1 bp space between segments, etc. (default: 5)"
  }
}
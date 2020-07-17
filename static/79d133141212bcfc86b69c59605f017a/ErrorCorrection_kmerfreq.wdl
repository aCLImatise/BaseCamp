version 1.0

task ErrorCorrectionKmerfreq {
  input {
    Int? consecutive_kmer_size
    Int? space_kmer_solid
    Int? space_kmer_space
    String? output_prefix_output
    Boolean? increase_verbosity_times
  }
  command <<<
    ErrorCorrection kmerfreq \
      ~{if defined(consecutive_kmer_size) then ("-k " +  '"' + consecutive_kmer_size + '"') else ""} \
      ~{if defined(space_kmer_solid) then ("-K " +  '"' + space_kmer_solid + '"') else ""} \
      ~{if defined(space_kmer_space) then ("-S " +  '"' + space_kmer_space + '"') else ""} \
      ~{if defined(output_prefix_output) then ("-p " +  '"' + output_prefix_output + '"') else ""} \
      ~{true="-v" false="" increase_verbosity_times}
  >>>
  parameter_meta {
    consecutive_kmer_size: "Consecutive Kmer Size, Default: 17"
    space_kmer_solid: "Space Kmer Solid Part Size, Default: 16"
    space_kmer_space: "Space Kmer Space Part Size, Default: 9"
    output_prefix_output: "Output prefix, Default: output"
    increase_verbosity_times: "Increase Verbosity, 3 times max"
  }
}
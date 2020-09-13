version 1.0

task ProphexIndex {
  input {
    Int? kmer_length_klcp
    Boolean? construct_klcp_sa
    Boolean? sampling_distance_sa
    String idx_base
  }
  command <<<
    prophex index \
      ~{idx_base} \
      ~{if defined(kmer_length_klcp) then ("-k " +  '"' + kmer_length_klcp + '"') else ""} \
      ~{if (construct_klcp_sa) then "-s" else ""} \
      ~{if (sampling_distance_sa) then "-i" else ""}
  >>>
  parameter_meta {
    kmer_length_klcp: "k-mer length for k-LCP"
    construct_klcp_sa: "construct k-LCP and SA in parallel"
    sampling_distance_sa: "sampling distance for SA"
    idx_base: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ProphexKlcp {
  input {
    Int? length_of_kmer
    Boolean? construct_klcp_sa
    Boolean? sampling_distance_sa
    String idx_base
  }
  command <<<
    prophex klcp \
      ~{idx_base} \
      ~{if defined(length_of_kmer) then ("-k " +  '"' + length_of_kmer + '"') else ""} \
      ~{if (construct_klcp_sa) then "-s" else ""} \
      ~{if (sampling_distance_sa) then "-i" else ""}
  >>>
  parameter_meta {
    length_of_kmer: "length of k-mer"
    construct_klcp_sa: "construct k-LCP and SA in parallel"
    sampling_distance_sa: "sampling distance for SA"
    idx_base: ""
  }
  output {
    File out_stdout = stdout()
  }
}
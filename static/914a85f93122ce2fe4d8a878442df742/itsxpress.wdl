version 1.0

task Itsxpress {
  input {
    String? tax_a
    String? cluster_id
    Boolean? reversed_primers
    String? log
    String? threads
    String? fast_q
    Boolean? single_end
    String? fast_q_two
    Boolean? outfile
  }
  command <<<
    itsxpress \
      ~{if defined(tax_a) then ("--taxa " +  '"' + tax_a + '"') else ""} \
      ~{if defined(cluster_id) then ("--cluster_id " +  '"' + cluster_id + '"') else ""} \
      ~{true="--reversed_primers" false="" reversed_primers} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{true="--single_end" false="" single_end} \
      ~{if defined(fast_q_two) then ("--fastq2 " +  '"' + fast_q_two + '"') else ""} \
      ~{true="--outfile" false="" outfile}
  >>>
  parameter_meta {
    tax_a: "The taxonomic group sequenced."
    cluster_id: "The percent identity for clustering reads range [0.99-1.0], set to 1 for exact dereplication."
    reversed_primers: "Primers are in reverse orientation as in Taylor et al. 2016, DOI:10.1128/AEM.02576-16. If selected ITSxpress returns trimmed reads flipped to the forward orientation"
    log: "Log file"
    threads: "Number of processor threads to use."
    fast_q: ""
    single_end: ""
    fast_q_two: ""
    outfile: ""
  }
}
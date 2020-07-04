version 1.0

task RibotricerCountOrfsCodon {
  input {
    String? ribot_ricer_index
    String? detected_orfs
    String? features
    String? ribot_ricer_index_fast_a
    String? prefix
    Boolean? report_all
  }
  command <<<
    ribotricer count-orfs-codon \
      ~{if defined(ribot_ricer_index) then ("--ribotricer_index " +  '"' + ribot_ricer_index + '"') else ""} \
      ~{if defined(detected_orfs) then ("--detected_orfs " +  '"' + detected_orfs + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(ribot_ricer_index_fast_a) then ("--ribotricer_index_fasta " +  '"' + ribot_ricer_index_fast_a + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--report_all" false="" report_all}
  >>>
  parameter_meta {
    ribot_ricer_index: "Path to the index file of ribotricer This file should be generated using ribotricer prepare-orfs  [required]"
    detected_orfs: "Path to the detected orfs file This file should be generated using ribotricer detect- orfs  [required]"
    features: "ORF types separated with comma  [required]"
    ribot_ricer_index_fast_a: "Path to ORF seq file  [required]"
    prefix: "Prefix for output files  [required]"
    report_all: "Whether output all ORFs including those non- translating ones"
  }
}
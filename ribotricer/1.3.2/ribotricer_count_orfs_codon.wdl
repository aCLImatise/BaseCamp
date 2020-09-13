version 1.0

task RibotricerCountorfscodon {
  input {
    File? ribot_ricer_index
    File? detected_orfs
    String? features
    File? ribot_ricer_index_fast_a
    String? prefix
    Boolean? report_all
  }
  command <<<
    ribotricer count_orfs_codon \
      ~{if defined(ribot_ricer_index) then ("--ribotricer_index " +  '"' + ribot_ricer_index + '"') else ""} \
      ~{if defined(detected_orfs) then ("--detected_orfs " +  '"' + detected_orfs + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(ribot_ricer_index_fast_a) then ("--ribotricer_index_fasta " +  '"' + ribot_ricer_index_fast_a + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (report_all) then "--report_all" else ""}
  >>>
  parameter_meta {
    ribot_ricer_index: "Path to the index file of ribotricer This\\nfile should be generated using ribotricer\\nprepare-orfs  [required]"
    detected_orfs: "Path to the detected orfs file This file\\nshould be generated using ribotricer detect-\\norfs  [required]"
    features: "ORF types separated with comma  [required]"
    ribot_ricer_index_fast_a: "Path to ORF seq file  [required]"
    prefix: "Prefix for output files  [required]"
    report_all: "Whether output all ORFs including those non-\\ntranslating ones"
  }
  output {
    File out_stdout = stdout()
  }
}
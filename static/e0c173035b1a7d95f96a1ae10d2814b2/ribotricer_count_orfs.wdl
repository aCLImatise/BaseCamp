version 1.0

task RibotricerCountOrfs {
  input {
    String? ribot_ricer_index
    String? detected_orfs
    String? features
    String? out
    Boolean? report_all
  }
  command <<<
    ribotricer count-orfs \
      ~{if defined(ribot_ricer_index) then ("--ribotricer_index " +  '"' + ribot_ricer_index + '"') else ""} \
      ~{if defined(detected_orfs) then ("--detected_orfs " +  '"' + detected_orfs + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--report_all" false="" report_all}
  >>>
  parameter_meta {
    ribot_ricer_index: "Path to the index file of ribotricer This file should be generated using ribotricer prepare-orfs [required]"
    detected_orfs: "Path to the detected orfs file This file should be generated using ribotricer detect-orfs  [required]"
    features: "ORF types separated with comma  [required]"
    out: "Path to output file  [required]"
    report_all: "Whether output all ORFs including those non- translating ones"
  }
}
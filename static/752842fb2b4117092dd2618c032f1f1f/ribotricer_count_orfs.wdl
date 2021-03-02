version 1.0

task RibotricerCountorfs {
  input {
    File? ribot_ricer_index
    File? detected_orfs
    String? features
    File? out
    Boolean? report_all
  }
  command <<<
    ribotricer count_orfs \
      ~{if defined(ribot_ricer_index) then ("--ribotricer_index " +  '"' + ribot_ricer_index + '"') else ""} \
      ~{if defined(detected_orfs) then ("--detected_orfs " +  '"' + detected_orfs + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (report_all) then "--report_all" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ribot_ricer_index: "Path to the index file of ribotricer This file\\nshould be generated using ribotricer prepare-orfs\\n[required]"
    detected_orfs: "Path to the detected orfs file This file should be\\ngenerated using ribotricer detect-orfs  [required]"
    features: "ORF types separated with comma  [required]"
    out: "Path to output file  [required]"
    report_all: "Whether output all ORFs including those non-\\ntranslating ones"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}
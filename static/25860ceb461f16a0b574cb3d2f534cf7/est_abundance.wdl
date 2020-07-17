version 1.0

task EstAbundance.py {
  input {
    String? input_kraken_report
    String? km_er_distr
    String? output_modified_file
    String? level
    String? out_report
    String? threshold
  }
  command <<<
    est_abundance.py \
      ~{if defined(input_kraken_report) then ("--input " +  '"' + input_kraken_report + '"') else ""} \
      ~{if defined(km_er_distr) then ("--kmer_distr " +  '"' + km_er_distr + '"') else ""} \
      ~{if defined(output_modified_file) then ("--output " +  '"' + output_modified_file + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(out_report) then ("--out-report " +  '"' + out_report + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    input_kraken_report: "Input kraken report file."
    km_er_distr: "Kmer distribution file."
    output_modified_file: "Output modified kraken report file with abundance estimates"
    level: "Level to push all reads to [default: S]."
    out_report: "Name of new kraken report [default: same as input report with _bracken added to filename]"
    threshold: "Threshold for the minimum number of reads kraken must assign to a classification for that classification to be considered in the final abundance estimation."
  }
}
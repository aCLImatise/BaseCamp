version 1.0

task EstAbundancepy {
  input {
    File? input_kraken_report
    File? km_er_distr
    File? output_modified_file
    String? level
    File? out_report
    Int? threshold
  }
  command <<<
    est_abundance_py \
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
    output_modified_file: "Output modified kraken report file with abundance\\nestimates"
    level: "Level to push all reads to [default: S]."
    out_report: "Name of new kraken report [default: same as input\\nreport with _bracken added to filename]"
    threshold: "Threshold for the minimum number of reads kraken must\\nassign to a classification for that classification to\\nbe considered in the final abundance estimation.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_modified_file = "${in_output_modified_file}"
  }
}
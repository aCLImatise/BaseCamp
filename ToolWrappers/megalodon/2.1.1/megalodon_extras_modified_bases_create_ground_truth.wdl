version 1.0

task MegalodonExtrasModifiedBasesCreateGroundTruth {
  input {
    Array[String] bed_methyl_files
    Int? coverage_threshold
    Float? pct_mod_thresholds
    File? out_csv
    String ground_truth_modifications_dot_csv
  }
  command <<<
    megalodon_extras modified_bases create_ground_truth \
      ~{ground_truth_modifications_dot_csv} \
      ~{if defined(bed_methyl_files) then ("--bed-methyl-files " +  '"' + bed_methyl_files + '"') else ""} \
      ~{if defined(coverage_threshold) then ("--coverage-threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if defined(pct_mod_thresholds) then ("--pct-mod-thresholds " +  '"' + pct_mod_thresholds + '"') else ""} \
      ~{if defined(out_csv) then ("--out-csv " +  '"' + out_csv + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed_methyl_files: "Bed methyl files."
    coverage_threshold: "Only include sites with sufficient coverage. Default:\\n1 (= All sites)"
    pct_mod_thresholds: "PCT_MOD_THRESHOLDS\\nLower and upper percent modified thresholds for ground\\ntruth modified positions. Default: [10.0, 90.0]"
    out_csv: "Output filename for ground truth calls. Default:"
    ground_truth_modifications_dot_csv: "--strand-offset STRAND_OFFSET"
  }
  output {
    File out_stdout = stdout()
    File out_out_csv = "${in_out_csv}"
  }
}
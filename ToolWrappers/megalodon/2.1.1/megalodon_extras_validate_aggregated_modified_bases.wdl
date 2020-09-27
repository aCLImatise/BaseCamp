version 1.0

task MegalodonExtrasValidateAggregatedModifiedBases {
  input {
    File? modified_bed_methyl_files
    Array[String] ground_truth_csv_s
    Array[String] control_bed_methyl_files
    File? valid_positions
    Int? coverage_threshold
    String? strand_offset
    Boolean? allow_unbalance_classes
    File? out_pdf
    String megalodon_agg_validation_dot_pdf
  }
  command <<<
    megalodon_extras validate aggregated_modified_bases \
      ~{megalodon_agg_validation_dot_pdf} \
      ~{if (modified_bed_methyl_files) then "--modified-bed-methyl-files" else ""} \
      ~{if defined(ground_truth_csv_s) then ("--ground-truth-csvs " +  '"' + ground_truth_csv_s + '"') else ""} \
      ~{if defined(control_bed_methyl_files) then ("--control-bed-methyl-files " +  '"' + control_bed_methyl_files + '"') else ""} \
      ~{if defined(valid_positions) then ("--valid-positions " +  '"' + valid_positions + '"') else ""} \
      ~{if defined(coverage_threshold) then ("--coverage-threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if defined(strand_offset) then ("--strand-offset " +  '"' + strand_offset + '"') else ""} \
      ~{if (allow_unbalance_classes) then "--allow-unbalance-classes" else ""} \
      ~{if defined(out_pdf) then ("--out-pdf " +  '"' + out_pdf + '"') else ""}
  >>>
  parameter_meta {
    modified_bed_methyl_files: "MODIFIED_BED_METHYL_FILES\\n[MODIFIED_BED_METHYL_FILES ...]\\n[--ground-truth-csvs GROUND_TRUTH_CSVS [GROUND_TRUTH_CSVS ...]]\\n[--control-bed-methyl-files CONTROL_BED_METHYL_FILES [CONTROL_BED_METHYL_FILES ...]]\\n[--valid-positions VALID_POSITIONS]\\n[--coverage-threshold COVERAGE_THRESHOLD]\\n[--strand-offset STRAND_OFFSET]\\n[--allow-unbalance-classes]\\n[--out-pdf OUT_PDF]\\n[--out-filename OUT_FILENAME]"
    ground_truth_csv_s: "Ground truth csvs with (chrm, strand, pos, is_mod)\\nvalues. To collapse to forward strand coordinates,\\nstrand should be \\\".\\\"."
    control_bed_methyl_files: "Bed methyl files from control sample(s)."
    valid_positions: "BED file containing positions to be considered.\\nMultiple files may be provided"
    coverage_threshold: "Only include sites with sufficient coverage. Default:\\n1 (= All sites)"
    strand_offset: "Offset to combine stranded results. Positive value\\nindicates reverse strand sites have higher position\\nvalues. Default treat strands independently."
    allow_unbalance_classes: "Allow unbalanced classes in modified base metric\\ncomputation. Default: Balance size of modified and\\ncanonical classes for each comparison made."
    out_pdf: "Output pdf filename. Default:"
    megalodon_agg_validation_dot_pdf: "--out-filename OUT_FILENAME"
  }
  output {
    File out_stdout = stdout()
    File out_modified_bed_methyl_files = "${in_modified_bed_methyl_files}"
    File out_out_pdf = "${in_out_pdf}"
  }
}
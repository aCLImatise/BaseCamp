version 1.0

task MegalodonExtrasValidateCompareModifiedBases {
  input {
    Boolean? var_0
    Boolean? var_1
    Int? sample_names
    File? valid_positions
    Int? coverage_threshold
    Int? heat_map_num_bins
    String? strand_offset
    File? out_pdf
    Int var_8
    Int var_9
    String megalodon_mod_coma_paris_on_dot_pdf
  }
  command <<<
    megalodon_extras validate compare_modified_bases \
      ~{var_8} \
      ~{var_9} \
      ~{megalodon_mod_coma_paris_on_dot_pdf} \
      ~{if (var_0) then "--sample1-bed-methyl-files" else ""} \
      ~{if (var_1) then "--sample2-bed-methyl-files" else ""} \
      ~{if defined(sample_names) then ("--sample-names " +  '"' + sample_names + '"') else ""} \
      ~{if defined(valid_positions) then ("--valid-positions " +  '"' + valid_positions + '"') else ""} \
      ~{if defined(coverage_threshold) then ("--coverage-threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if defined(heat_map_num_bins) then ("--heatmap-num-bins " +  '"' + heat_map_num_bins + '"') else ""} \
      ~{if defined(strand_offset) then ("--strand-offset " +  '"' + strand_offset + '"') else ""} \
      ~{if defined(out_pdf) then ("--out-pdf " +  '"' + out_pdf + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    sample_names: "SAMPLE_NAMES\\nName for provided samples. Default: ['Sample 1',\\n'Sample 2']"
    valid_positions: "BED file containing positions to be considered.\\nMultiple files may be provided"
    coverage_threshold: "Only include sites with sufficient coverage. Default:\\n1 (= All sites)"
    heat_map_num_bins: "Number of bins for heatmap plotting. Default: 31"
    strand_offset: "Offset to combine stranded results. Positive value\\nindicates reverse strand sites have higher position\\nvalues. Default treat strands independently."
    out_pdf: "Output pdf filename. Default:"
    var_8: "[SAMPLE1_BED_METHYL_FILES ...]"
    var_9: "[SAMPLE2_BED_METHYL_FILES ...]"
    megalodon_mod_coma_paris_on_dot_pdf: "--out-filename OUT_FILENAME"
  }
  output {
    File out_stdout = stdout()
    File out_out_pdf = "${in_out_pdf}"
  }
}
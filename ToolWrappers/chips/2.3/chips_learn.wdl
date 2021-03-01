version 1.0

task ChipsLearn {
  input {
    File? bam_file_chip
    File? bed_file_peak
    File? file_type_supported
    String? prefix_output_files
    Int? index_bed_file
    Float? ratio_high_score
    Int? est
    Boolean? no_scale
    Boolean? scale_outliers
    Boolean? paired
    Float? th_res
  }
  command <<<
    chips learn \
      ~{if defined(bam_file_chip) then ("-b " +  '"' + bam_file_chip + '"') else ""} \
      ~{if defined(bed_file_peak) then ("-p " +  '"' + bed_file_peak + '"') else ""} \
      ~{if defined(file_type_supported) then ("-t " +  '"' + file_type_supported + '"') else ""} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(index_bed_file) then ("-c " +  '"' + index_bed_file + '"') else ""} \
      ~{if defined(ratio_high_score) then ("-r " +  '"' + ratio_high_score + '"') else ""} \
      ~{if defined(est) then ("--est " +  '"' + est + '"') else ""} \
      ~{if (no_scale) then "--noscale" else ""} \
      ~{if (scale_outliers) then "--scale-outliers" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(th_res) then ("--thres " +  '"' + th_res + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chips:2.3--h5ef6573_0"
  }
  parameter_meta {
    bam_file_chip: ":     BAM file with ChIP reads (.bai index required)"
    bed_file_peak: ":     BED file with peak regions (Homer format or BED format)"
    file_type_supported: ": File type of the input peak file. Only `homer` or `bed` supported."
    prefix_output_files: ":     Prefix for output files"
    index_bed_file: ":           The index of the BED file column used to score each peak (index starting from 1)"
    ratio_high_score: ":         Ratio of high score peaks to ignore\\nDefault: 0"
    est: ":        Estimated fragment length\\nDefault: 200"
    no_scale: ":          Don't scale peak scores by the max score."
    scale_outliers: ":   Set all peaks with scores >2*median score to have binding prob 1. Recommended with real data"
    paired: ":           Loading paired-end reads\\nDefault: false"
    th_res: ":    Threshold for peak scores in single-end read length estimation\\nDefault: 100"
  }
  output {
    File out_stdout = stdout()
  }
}
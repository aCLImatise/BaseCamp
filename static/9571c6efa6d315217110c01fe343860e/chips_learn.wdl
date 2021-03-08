version 1.0

task ChipsLearn {
  input {
    File? bam_file_chip
    File? bed_file_peak
    File? file_type_supported
    String? prefix_output_files
    Int? index_bed_file
    Float? ratio_high_score
    Boolean? no_scale
    Boolean? scale_outliers
    String? region
    Boolean? paired
    Int? est
    Float? th_res
    Float? th_res_scale
  }
  command <<<
    chips learn \
      ~{if defined(bam_file_chip) then ("-b " +  '"' + bam_file_chip + '"') else ""} \
      ~{if defined(bed_file_peak) then ("-p " +  '"' + bed_file_peak + '"') else ""} \
      ~{if defined(file_type_supported) then ("-t " +  '"' + file_type_supported + '"') else ""} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(index_bed_file) then ("-c " +  '"' + index_bed_file + '"') else ""} \
      ~{if defined(ratio_high_score) then ("-r " +  '"' + ratio_high_score + '"') else ""} \
      ~{if (no_scale) then "--noscale" else ""} \
      ~{if (scale_outliers) then "--scale-outliers" else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(est) then ("--est " +  '"' + est + '"') else ""} \
      ~{if defined(th_res) then ("--thres " +  '"' + th_res + '"') else ""} \
      ~{if defined(th_res_scale) then ("--thres-scale " +  '"' + th_res_scale + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chips:2.4--h5ef6573_0"
  }
  parameter_meta {
    bam_file_chip: ":     BAM file with ChIP reads (.bai index required)"
    bed_file_peak: ":     BED file with peak regions (Homer format or BED format)"
    file_type_supported: ": File type of the input peak file. Only `homer` or `bed` supported."
    prefix_output_files: ":     Prefix for output files"
    index_bed_file: ":           The index of the BED file column used to score each peak (index starting from 1)"
    ratio_high_score: ":         Ratio of high score peaks to ignore\\nDefault: 0"
    no_scale: ":          Don't scale peak scores by the max score.\\nDefault: false"
    scale_outliers: ":   Set all peaks with scores >2*median score to have binding prob 1. Recommended with real data.\\nDefault: false"
    region: ":     Only consider peaks from this region chrom:start-end\\nDefault: genome-wide"
    paired: ":           Loading paired-end reads\\nDefault: false"
    est: ":        The estimated fragment length. Please set this number as the loose upper-bound of your estimated fragment length.\\nThis can result in more robust estimates especially for data with narrow peaks.\\nDefault: 300"
    th_res: ":    Absolute threshold for peak scores. Only consider peaks with at least this score.\\nChIPs applies `--thres` or `--thres-scale` whichever is stricter.\\nDefault: 100"
    th_res_scale: ": Scale threshold for peak scores. Only consider peaks with at least this score.\\nafter scaling scores to be between 0-1.\\nChIPs applies `--thres` or `--thres-scale` whichever is stricter.\\nDefault: 0"
  }
  output {
    File out_stdout = stdout()
  }
}
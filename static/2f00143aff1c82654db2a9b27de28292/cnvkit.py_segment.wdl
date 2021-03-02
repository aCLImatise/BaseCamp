version 1.0

task CnvkitpySegment {
  input {
    File? output_table_file
    File? data_frame
    String? method
    Int? threshold
    Boolean? drop_low_coverage
    Int? drop_outliers
    File? r_script_path
    Boolean? number_subprocesses_segment
    Boolean? smooth_cbs
    File? vcf
    String? sample_id
    String? normal_id
    Int? min_variant_depth
    Boolean? ignore_vcfs_genotypes
  }
  command <<<
    cnvkit_py segment \
      ~{if defined(output_table_file) then ("--output " +  '"' + output_table_file + '"') else ""} \
      ~{if defined(data_frame) then ("--dataframe " +  '"' + data_frame + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (drop_low_coverage) then "--drop-low-coverage" else ""} \
      ~{if defined(drop_outliers) then ("--drop-outliers " +  '"' + drop_outliers + '"') else ""} \
      ~{if defined(r_script_path) then ("--rscript-path " +  '"' + r_script_path + '"') else ""} \
      ~{if (number_subprocesses_segment) then "-p" else ""} \
      ~{if (smooth_cbs) then "--smooth-cbs" else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(sample_id) then ("--sample-id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(normal_id) then ("--normal-id " +  '"' + normal_id + '"') else ""} \
      ~{if defined(min_variant_depth) then ("--min-variant-depth " +  '"' + min_variant_depth + '"') else ""} \
      ~{if (ignore_vcfs_genotypes) then "-z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_table_file: "Output table file name (CNR-like table of segments,\\n.cns)."
    data_frame: "File name to save the raw R dataframe emitted by CBS\\nor Fused Lasso. (Useful for debugging.)"
    method: "Segmentation method (see docs), or 'none' for\\nchromosome arm-level averages as segments. [Default:\\ncbs]"
    threshold: "Significance threshold (p-value or FDR, depending on\\nmethod) to accept breakpoints during segmentation. For\\nHMM methods, this is the smoothing window size."
    drop_low_coverage: "Drop very-low-coverage bins before segmentation to\\navoid false-positive deletions in poor-quality tumor\\nsamples."
    drop_outliers: "Drop outlier bins more than this many multiples of the\\n95th quantile away from the average within a rolling\\nwindow. Set to 0 for no outlier filtering. [Default:\\n10]"
    r_script_path: "Path to the Rscript excecutable to use for running R\\ncode. Use this option to specify a non-default R\\ninstallation. [Default: Rscript]"
    number_subprocesses_segment: "[PROCESSES], --processes [PROCESSES]\\nNumber of subprocesses to segment in parallel. Give 0\\nor a negative value to use the maximum number of\\navailable CPUs. [Default: use 1 process]"
    smooth_cbs: "Perform an additional smoothing before CBS\\nsegmentation, which in some cases may increase the\\nsensitivity. Used only for CBS method."
    vcf: "VCF file name containing variants for segmentation by\\nallele frequencies."
    sample_id: "Specify the name of the sample in the VCF (-v/--vcf)\\nto use for b-allele frequency extraction and as the\\ndefault plot title."
    normal_id: "Corresponding normal sample ID in the input VCF\\n(-v/--vcf). This sample is used to select only\\ngermline SNVs to plot b-allele frequencies."
    min_variant_depth: "Minimum read depth for a SNV to be displayed in the\\nb-allele frequency plot. [Default: 20]"
    ignore_vcfs_genotypes: "[ALT_FREQ], --zygosity-freq [ALT_FREQ]\\nIgnore VCF's genotypes (GT field) and instead infer\\nzygosity from allele frequencies. [Default if used\\nwithout a number: 0.25]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_table_file = "${in_output_table_file}"
  }
}
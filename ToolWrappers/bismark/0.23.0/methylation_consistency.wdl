version 1.0

task MethylationConsistency {
  input {
    Boolean? min_count
    Boolean? single_end
    Boolean? paired_end
    Boolean? sam_tools_path
    Boolean? lower_threshold
    Boolean? upper_threshold
  }
  command <<<
    methylation_consistency \
      ~{if (min_count) then "--min-count" else ""} \
      ~{if (single_end) then "--single_end" else ""} \
      ~{if (paired_end) then "--paired_end" else ""} \
      ~{if (sam_tools_path) then "--samtools_path" else ""} \
      ~{if (lower_threshold) then "--lower_threshold" else ""} \
      ~{if (upper_threshold) then "--upper_threshold" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  parameter_meta {
    min_count: "Set the minumum number of CpGs which need to be present for a read to be considered at all\\n[Default: 5]. Reads with fewer CpGs than this will be discarded."
    single_end: "Input files will be treated as single-end Bismark BAM files. Default: [AUTO-DETECT]"
    paired_end: "Input files will be treated as paired-end Bismark BAM files. Default: [AUTO-DETECT]"
    sam_tools_path: "[path]  The path to your Samtools installation, e.g. /home/user/samtools/. Does not need to\\nbe specified explicitly if Samtools is in the PATH already"
    lower_threshold: "[INT] Percentage value up to which a read is considered (fully) un-methylated. [Default: 10]."
    upper_threshold: "[INT] Percentage value above which a read is considered (fully) methylated. [Default: 90]."
  }
  output {
    File out_stdout = stdout()
  }
}
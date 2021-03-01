version 1.0

task SplitPairedBampy {
  input {
    File? input_file
    File? out_prefix
  }
  command <<<
    split_paired_bam_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0"
  }
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format. BAM file should\\nbe sorted and indexed"
    out_prefix: "Prefix of output BAM files. \\\"prefix.R1.bam\\\" file\\ncontains the 1st read, \\\"prefix.R2.bam\\\" file contains\\nthe 2nd read\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_prefix = "${in_out_prefix}"
  }
}
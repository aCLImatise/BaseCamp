version 1.0

task DivideBam.py {
  input {
    String? input_file
    String? subset_num
    String? out_prefix
    Boolean? skip_unmap
  }
  command <<<
    divide_bam.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(subset_num) then ("--subset-num " +  '"' + subset_num + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{true="--skip-unmap" false="" skip_unmap}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM format. BAM file should be sorted and indexed."
    subset_num: "Number of small BAM files"
    out_prefix: "Prefix of output BAM files. Output \"Prefix_num.bam\"."
    skip_unmap: "Skip unmapped reads."
  }
}
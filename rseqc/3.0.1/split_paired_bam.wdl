version 1.0

task SplitPairedBam.py {
  input {
    String? input_file
    String? out_prefix
  }
  command <<<
    split_paired_bam.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format. BAM file should be sorted and indexed"
    out_prefix: "Prefix of output BAM files. \"prefix.R1.bam\" file contains the 1st read, \"prefix.R2.bam\" file contains the 2nd read"
  }
}
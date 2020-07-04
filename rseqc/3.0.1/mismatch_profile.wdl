version 1.0

task MismatchProfile.py {
  input {
    String? input_bam_file
    String? read_align_length
    String? out_prefix
    String? read_num
    String? mapq
  }
  command <<<
    mismatch_profile.py \
      ~{if defined(input_bam_file) then ("--input " +  '"' + input_bam_file + '"') else ""} \
      ~{if defined(read_align_length) then ("--read-align-length " +  '"' + read_align_length + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(read_num) then ("--read-num " +  '"' + read_num + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_bam_file: "Input BAM file. [required]"
    read_align_length: "Alignment length of read. It is usually set to the orignial read length. For example, all these cigar strings (\"101M\", \"68M140N33M\", \"53M1D48M\") suggest the read alignment length is 101. [required]"
    out_prefix: "Prefix of output files(s). [required]"
    read_num: "Number of aligned reads with mismatches used to calculate the mismatch profile. default=1000000"
    mapq: "Minimum mapping quality. default=30"
  }
}
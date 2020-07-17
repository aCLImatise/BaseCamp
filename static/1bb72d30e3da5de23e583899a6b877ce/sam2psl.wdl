version 1.0

task Sam2psl.py {
  input {
    String? input_file_sam
    Boolean? skip_conversion_cigar_one_dot_three
    Boolean? read_seq
    String? replace_read_ids
    String? output_file_psl
  }
  command <<<
    sam2psl.py \
      ~{if defined(input_file_sam) then ("--input " +  '"' + input_file_sam + '"') else ""} \
      ~{true="--skip-conversion-cigar-1.3" false="" skip_conversion_cigar_one_dot_three} \
      ~{true="--read-seq" false="" read_seq} \
      ~{if defined(replace_read_ids) then ("--replace-read-ids " +  '"' + replace_read_ids + '"') else ""} \
      ~{if defined(output_file_psl) then ("--output " +  '"' + output_file_psl + '"') else ""}
  >>>
  parameter_meta {
    input_file_sam: "The input file in SAM format."
    skip_conversion_cigar_one_dot_three: "By default if the CIGAR strings in the input SAM file are in the format defined in SAM version 1.4 (i.e. there are 'X' and '=') then the CIGAR string will be first converted into CIGAR string, which is described in SAM version 1.3, (i.e. there are no 'X' and '=' which are replaced with 'M') and afterwards into PSL format. Default is 'False'."
    read_seq: "It adds to the PSL output as column 22, the sequence of the read. This is not anymore a valid PSL format."
    replace_read_ids: "In the reads ids (also known as query name in PSL) the string specified here will be replaced with '/' (which is used in Solexa for /1 and /2)."
    output_file_psl: "The output file in PSL format."
  }
}
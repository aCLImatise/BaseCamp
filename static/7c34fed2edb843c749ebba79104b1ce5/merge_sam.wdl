version 1.0

task MergeSam.py {
  input {
    String? input_file_sam
    String? output_file_sam
    Boolean? forward_reverse
    String? mismatches_long
    String? mismatches_short
    String? short
  }
  command <<<
    merge-sam.py \
      ~{if defined(input_file_sam) then ("--input " +  '"' + input_file_sam + '"') else ""} \
      ~{if defined(output_file_sam) then ("--output " +  '"' + output_file_sam + '"') else ""} \
      ~{true="--forward-reverse" false="" forward_reverse} \
      ~{if defined(mismatches_long) then ("--mismatches-long " +  '"' + mismatches_long + '"') else ""} \
      ~{if defined(mismatches_short) then ("--mismatches-short " +  '"' + mismatches_short + '"') else ""} \
      ~{if defined(short) then ("--short " +  '"' + short + '"') else ""}
  >>>
  parameter_meta {
    input_file_sam: "The input file in SAM format."
    output_file_sam: "The output file in SAM format."
    forward_reverse: "By default a proper pair is considered the one where both reads which form a pair are on the same strand (e.g. output of 'bowtie --ff'). If this is set then a proper pair is considered when both reads are mapping on opposite strands. Default is 'False'."
    mismatches_long: "Maximum number of mismatches accepted per read for read sequences strictly longer than the value specified by '--mismatches-long'. If the number of mismatches in the input read is strictly larger than this number of mismaches given here then the read is filtered out. Default is '10000'."
    mismatches_short: "Maximum number of mismatches accepted per read for read sequences shorter than (including) the value specified by '--mismatches-short'. If the number of mismatches in the input read is strictly larger than this number of mismaches given here then the read is filtered out. Default is '10000'."
    short: "This value is used to define the upper limit of a 'short' read, for specifying the mismatches. Default is '20'."
  }
}
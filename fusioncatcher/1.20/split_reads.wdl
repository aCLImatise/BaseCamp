version 1.0

task SplitReads.py {
  input {
    String? input_file_fastq
    String? list
    String? output_one
    String? output_two
    String? wiggle_size
    String? gap_size
    String? anchor_size
    String? anchor_size_max
    String? replace_solexa_ids
    String? buffer_size
    Boolean? output_two_rc
  }
  command <<<
    split-reads.py \
      ~{if defined(input_file_fastq) then ("--input " +  '"' + input_file_fastq + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(output_one) then ("--output-1 " +  '"' + output_one + '"') else ""} \
      ~{if defined(output_two) then ("--output-2 " +  '"' + output_two + '"') else ""} \
      ~{if defined(wiggle_size) then ("--wiggle-size " +  '"' + wiggle_size + '"') else ""} \
      ~{if defined(gap_size) then ("--gap-size " +  '"' + gap_size + '"') else ""} \
      ~{if defined(anchor_size) then ("--anchor-size " +  '"' + anchor_size + '"') else ""} \
      ~{if defined(anchor_size_max) then ("--anchor-size-max " +  '"' + anchor_size_max + '"') else ""} \
      ~{if defined(replace_solexa_ids) then ("--replace-solexa-ids " +  '"' + replace_solexa_ids + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{true="--output-2-rc" false="" output_two_rc}
  >>>
  parameter_meta {
    input_file_fastq: "The input file in FASTQ format (Solexa). Can be given as gzipped file too."
    list: "A text file containing on each line a name of short read which should be extracted from the input FASTQ file and its corresponding cut position (e.g. cut at position N (0-offset); part 1 = [0:N] and part 2 = [N+1:end-read])."
    output_one: "The output FASTQ file where is the first part of the reads (on forward strand)."
    output_two: "The output FASTQ file where is the second part of the reads (on forward strand)."
    wiggle_size: "The size of the wiggle for the cut. If it is 0 then a read is cut into one paired-reads. If it is 1 then a read is cut into 3 paired-reads. Default is 0."
    gap_size: "The size of the gap for the cut. Default is 0."
    anchor_size: "The minimum size of the anchor (for a mapped read which is splited). Default is 15."
    anchor_size_max: "The maximum size of the anchor (for a mapped read which is splited). Default is 500."
    replace_solexa_ids: "In the reads ids the '/' from '/1' and '/2' will be replaced with the string given here."
    buffer_size: "The size of the buffer used for keeping the list of reads ids (given by --list). Default is 2000000000."
    output_two_rc: "The Fastq file specified by '--output-2' will be reverse-complemented. Default is False."
  }
}
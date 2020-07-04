version 1.0

task MergeReads.py {
  input {
    String? input_one
    String? input_two
    String? merged
    String? forward
    String? reverse
    String? alignment
    String? fragment_size
    String? overlap
    String? processes
  }
  command <<<
    merge-reads.py \
      ~{if defined(input_one) then ("--input_1 " +  '"' + input_one + '"') else ""} \
      ~{if defined(input_two) then ("--input_2 " +  '"' + input_two + '"') else ""} \
      ~{if defined(merged) then ("--merged " +  '"' + merged + '"') else ""} \
      ~{if defined(forward) then ("--forward " +  '"' + forward + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragment-size " +  '"' + fragment_size + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""}
  >>>
  parameter_meta {
    input_one: "The input FASTQ file containing the reads from 5' fragment end."
    input_two: "The input FASTQ file containing the reads from 3' fragment end."
    merged: "It outputs the merged reads as FASTQ file."
    forward: "It outputs the un-merged reads as FASTQ file."
    reverse: "It outputs the un-merged reads as FASTQ file."
    alignment: "It outputs also the alignment for each found overlapping."
    fragment_size: "It outputs the fragment size for paired reads which are found to overlap."
    overlap: "The minimum length of the region which is considered an overlap. Default is 11."
    processes: "Number of parallel processes/CPUs to be used for computations. In case of value 0 then the program will use all the CPUs which are found. The default value is 0."
  }
}
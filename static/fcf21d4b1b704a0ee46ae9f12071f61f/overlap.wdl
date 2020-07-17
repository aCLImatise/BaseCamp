version 1.0

task Overlap.py {
  input {
    String? input_one
    String? input_two
    String? it_gives_statistics
    String? alignment
    Boolean? merged
    String? fragment_size
    String? overlap
    Boolean? fail_gracefully
    String? processes
  }
  command <<<
    overlap.py \
      ~{if defined(input_one) then ("--input_1 " +  '"' + input_one + '"') else ""} \
      ~{if defined(input_two) then ("--input_2 " +  '"' + input_two + '"') else ""} \
      ~{if defined(it_gives_statistics) then ("--output " +  '"' + it_gives_statistics + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{true="--merged" false="" merged} \
      ~{if defined(fragment_size) then ("--fragment-size " +  '"' + fragment_size + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{true="--fail-gracefully" false="" fail_gracefully} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""}
  >>>
  parameter_meta {
    input_one: "The input FASTQ file containing the reads from 5' fragment end."
    input_two: "The input FASTQ file containing the reads from 3' fragment end."
    it_gives_statistics: "It gives a statistics regarding the amount of mate reads which are overlapping."
    alignment: "It outputs also the alignment for each found overlapping."
    merged: "It outputs in the alignment file, the info for merging the paired-end reads (len_read_1,len_read_2,mismatches _in_overlapping_region)."
    fragment_size: "It outputs the fragment size for paired reads which are found to overlap."
    overlap: "The minimum length of the region which is considered an overlap. Default is 13."
    fail_gracefully: "Fail gracefully in case the the input reads have different lengths. Default is False."
    processes: "Number of parallel processes/CPUs to be used for computations. In case of value 0 then the program will use all the CPUs which are found. The default value is 0."
  }
}
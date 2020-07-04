version 1.0

task FindIndels {
  input {
    Int? min_in_del_length
    Boolean? all_alignments
    String? output_indels_file
    String? bed
    String? threads
    String bam
  }
  command <<<
    find_indels \
      ~{bam} \
      ~{if defined(min_in_del_length) then ("--min_indel_length " +  '"' + min_in_del_length + '"') else ""} \
      ~{true="--all_alignments" false="" all_alignments} \
      ~{if defined(output_indels_file) then ("--output " +  '"' + output_indels_file + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    min_in_del_length: "Filter out indels shorter than this length. (default: 0)"
    all_alignments: "Include secondary and supplementary alignments. (default: False)"
    output_indels_file: "Output indels to file instead of stdout. (default: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'>)"
    bed: "Additionaly output a .bed file. (default: None)"
    threads: "Number of threads for parallel processing. (default: 1)"
    bam: "Path to bam file."
  }
}
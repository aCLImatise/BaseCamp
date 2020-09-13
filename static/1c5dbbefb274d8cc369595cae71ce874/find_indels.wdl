version 1.0

task FindIndels {
  input {
    Int? min_in_del_length
    Boolean? all_alignments
    File? output_indels_file
    File? bed
    Int? threads
  }
  command <<<
    find_indels \
      ~{if defined(min_in_del_length) then ("--min_indel_length " +  '"' + min_in_del_length + '"') else ""} \
      ~{if (all_alignments) then "--all_alignments" else ""} \
      ~{if defined(output_indels_file) then ("--output " +  '"' + output_indels_file + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    min_in_del_length: "Filter out indels shorter than this length. (default:\\n0)"
    all_alignments: "Include secondary and supplementary alignments.\\n(default: False)"
    output_indels_file: "Output indels to file instead of stdout. (default:\\n<_io.TextIOWrapper name='<stdout>' mode='w'\\nencoding='ANSI_X3.4-1968'>)"
    bed: "Additionaly output a .bed file. (default: None)"
    threads: "Number of threads for parallel processing. (default:\\n1)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_indels_file = "${in_output_indels_file}"
    File out_bed = "${in_bed}"
  }
}
version 1.0

task RemoveReadsGenomeTranscriptome.py {
  input {
    String? input_map_one
    String? input_map_two
    String? mismatches_column
    String? output_bowtie_map
    String? tmp_dir
  }
  command <<<
    remove_reads_genome_transcriptome.py \
      ~{if defined(input_map_one) then ("--input_map_1 " +  '"' + input_map_one + '"') else ""} \
      ~{if defined(input_map_two) then ("--input_map_2 " +  '"' + input_map_two + '"') else ""} \
      ~{if defined(mismatches_column) then ("--mismatches_column " +  '"' + mismatches_column + '"') else ""} \
      ~{if defined(output_bowtie_map) then ("--output " +  '"' + output_bowtie_map + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""}
  >>>
  parameter_meta {
    input_map_one: "The input file in BOWTIE MAP format."
    input_map_two: "The input file in BOWTIE MAP format."
    mismatches_column: "The column number in the MAP file which contains the mismatches. Default is 8."
    output_bowtie_map: "The output BOWTIE MAP file. It contains only the reads and their mappings as they appear in '--input_map_2' file except the reads which are found to have a larger number of mismatches in '--input_map_2' file compared to '--input_map_1' file."
    tmp_dir: "The directory which should be used as temporary directory. By default is the OS temporary directory."
  }
}
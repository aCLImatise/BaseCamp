version 1.0

task QualityScores {
  input {
    String? name_input_including
    String? name_output_file
    String? phred_offset
  }
  command <<<
    qualityScores \
      ~{if defined(name_input_including) then ("-i " +  '"' + name_input_including + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(phred_offset) then ("--phred-offset " +  '"' + phred_offset + '"') else ""}
  >>>
  parameter_meta {
    name_input_including: "Name of input file including read data. The default format is Fastq."
    name_output_file: "Name of output file that is a text file including Phred scores for each read base."
    phred_offset: "refer to subread aligner."
  }
}
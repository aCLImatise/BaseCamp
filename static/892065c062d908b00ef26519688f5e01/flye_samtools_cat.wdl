version 1.0

task FlyeSamtoolsCat {
  input {
    File? list_file_names
    File? copy_header_file
    File? output_bamcram
    String sam_tools
    String cat
    String in_one_dot_bam
  }
  command <<<
    flye-samtools cat \
      ~{sam_tools} \
      ~{cat} \
      ~{in_one_dot_bam} \
      ~{if defined(list_file_names) then ("-b " +  '"' + list_file_names + '"') else ""} \
      ~{if defined(copy_header_file) then ("-h " +  '"' + copy_header_file + '"') else ""} \
      ~{if defined(output_bamcram) then ("-o " +  '"' + output_bamcram + '"') else ""}
  >>>
  parameter_meta {
    list_file_names: "list of input BAM/CRAM file names, one per line"
    copy_header_file: "copy the header from FILE [default is 1st input file]"
    output_bamcram: "output BAM/CRAM"
    sam_tools: ""
    cat: ""
    in_one_dot_bam: ""
  }
}
version 1.0

task FlyesamtoolsCat {
  input {
    File? list_input_bamcram
    File? copy_header_file
    File? output_bamcram
    String sam_tools
    String cat
    Int in_one_dot_bam
  }
  command <<<
    flye_samtools cat \
      ~{sam_tools} \
      ~{cat} \
      ~{in_one_dot_bam} \
      ~{if defined(list_input_bamcram) then ("-b " +  '"' + list_input_bamcram + '"') else ""} \
      ~{if defined(copy_header_file) then ("-h " +  '"' + copy_header_file + '"') else ""} \
      ~{if defined(output_bamcram) then ("-o " +  '"' + output_bamcram + '"') else ""}
  >>>
  parameter_meta {
    list_input_bamcram: "list of input BAM/CRAM file names, one per line"
    copy_header_file: "copy the header from FILE [default is 1st input file]"
    output_bamcram: "output BAM/CRAM"
    sam_tools: ""
    cat: ""
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}
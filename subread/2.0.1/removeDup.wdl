version 1.0

task RemoveDup {
  input {
    File? name_input_file
    File? name_output_sam
    Boolean? generate_sam_output
    Int? specify_duplication_cutoff
    Directory? directory_storing_files
  }
  command <<<
    removeDup \
      ~{if defined(name_input_file) then ("-i " +  '"' + name_input_file + '"') else ""} \
      ~{if defined(name_output_sam) then ("-o " +  '"' + name_output_sam + '"') else ""} \
      ~{if (generate_sam_output) then "-S" else ""} \
      ~{if defined(specify_duplication_cutoff) then ("-r " +  '"' + specify_duplication_cutoff + '"') else ""} \
      ~{if defined(directory_storing_files) then ("-t " +  '"' + directory_storing_files + '"') else ""}
  >>>
  parameter_meta {
    name_input_file: "Name of input file in SAM/BAM format."
    name_output_sam: "Name of output SAM file including filtered reads. The format is\\nBAM unless '-S' is specified."
    generate_sam_output: "Generate the SAM format output."
    specify_duplication_cutoff: "Specify the duplication cutoff. All the reads mapped to a location\\nare removed from the output if the number of reads mapped to this\\nlocation is equal or higher than the cutoff. 10 by default."
    directory_storing_files: "A directory storing temporary files generated by the program."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_sam = "${in_name_output_sam}"
  }
}
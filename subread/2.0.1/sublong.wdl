version 1.0

task Sublong {
  input {
    String? base_name_index
    File? name_input_read
    File? name_output_file
    Boolean? sam_output
    Int? number_cpu_threads
    Boolean? output_version_program
    Boolean? turn_rnaseq_mode
  }
  command <<<
    sublong \
      ~{if defined(base_name_index) then ("-i " +  '"' + base_name_index + '"') else ""} \
      ~{if defined(name_input_read) then ("-r " +  '"' + name_input_read + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if (sam_output) then "--SAMoutput" else ""} \
      ~{if defined(number_cpu_threads) then ("-T " +  '"' + number_cpu_threads + '"') else ""} \
      ~{if (output_version_program) then "-v" else ""} \
      ~{if (turn_rnaseq_mode) then "-X" else ""}
  >>>
  parameter_meta {
    base_name_index: "Base name of the index. The index must be built as a full index\\nand has only one block."
    name_input_read: "Name of an input read file. Acceptable formats include gzipped\\nFASTQ and FASTQ (automatically identified)."
    name_output_file: "Name of an output file in BAM format."
    sam_output: "Save mapping results in SAM format."
    number_cpu_threads: "Number of CPU threads used. 1 by default."
    output_version_program: "Output version of the program."
    turn_rnaseq_mode: "Turn on the RNA-seq mode."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}
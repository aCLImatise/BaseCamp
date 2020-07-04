version 1.0

task Sublong {
  input {
    String? base_name_index
    String? name_read_formats
    String? name_output_file
    Boolean? sam_output
    Int? number_cpu_used
    Boolean? output_version_program
    Boolean? turn_rnaseq_mode
  }
  command <<<
    sublong \
      ~{if defined(base_name_index) then ("-i " +  '"' + base_name_index + '"') else ""} \
      ~{if defined(name_read_formats) then ("-r " +  '"' + name_read_formats + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{true="--SAMoutput" false="" sam_output} \
      ~{if defined(number_cpu_used) then ("-T " +  '"' + number_cpu_used + '"') else ""} \
      ~{true="-v" false="" output_version_program} \
      ~{true="-X" false="" turn_rnaseq_mode}
  >>>
  parameter_meta {
    base_name_index: "Base name of the index. The index must be built as a full index and has only one block."
    name_read_formats: "Name of an input read file. Acceptable formats include gzipped FASTQ and FASTQ (automatically identified)."
    name_output_file: "Name of an output file in BAM format."
    sam_output: "Save mapping results in SAM format."
    number_cpu_used: "Number of CPU threads used. 1 by default."
    output_version_program: "Output version of the program."
    turn_rnaseq_mode: "Turn on the RNA-seq mode."
  }
}
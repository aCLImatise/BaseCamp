version 1.0

task RibolocoFindOrfs {
  input {
    String? fast_a
    File? info
    Directory? output_directory
    File? output_file
    String optional_arguments
  }
  command <<<
    riboloco_find_orfs \
      ~{optional_arguments} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/riboloco:0.3.9--pyh5e36f6f_0"
  }
  parameter_meta {
    fast_a: "Transciptome fasta - can be generated with\\nriboloco_convert_gff"
    info: "A info file with transcript details - can also be\\ngenerated with riboloco_convert_gff"
    output_directory: "The directory to save outputs."
    output_file: "Output file\\n"
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_output_file = "${in_output_file}"
  }
}
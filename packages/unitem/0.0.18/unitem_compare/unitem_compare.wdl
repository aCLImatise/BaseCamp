version 1.0

task UnitemCompare {
  input {
    Int? extension_one
    Int? extension_two
    Boolean? silent
    String assembly_file
    Int bin_dir_one
    Int bin_dir_two
    String output_file
  }
  command <<<
    unitem compare \
      ~{assembly_file} \
      ~{bin_dir_one} \
      ~{bin_dir_two} \
      ~{output_file} \
      ~{if defined(extension_one) then ("--extension1 " +  '"' + extension_one + '"') else ""} \
      ~{if defined(extension_two) then ("--extension2 " +  '"' + extension_two + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/unitem:0.0.18--py_0"
  }
  parameter_meta {
    extension_one: "extension of bins in directory 1 (default: fna)"
    extension_two: "extension of bins in directory 2 (default: fna)"
    silent: "suppress output of logger"
    assembly_file: "assembled contigs used to generate bins"
    bin_dir_one: "directory containing bins from first method"
    bin_dir_two: "directory containing bins from second method"
    output_file: "output file showing overlap between bins"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task CombineBrackenOutputspy {
  input {
    Array[String] files
    File? names
    File? name_output_file
  }
  command <<<
    combine_bracken_outputs_py \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  parameter_meta {
    files: "Bracken output files to combine."
    names: "Names for each input file - to be used in column\\nheaders of output [separate names with commas]"
    name_output_file: "Name of output file with combined Bracken results.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}
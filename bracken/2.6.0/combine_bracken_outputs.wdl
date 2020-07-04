version 1.0

task CombineBrackenOutputs.py {
  input {
    Array[File] files
    String? names
    String? name_output_file
  }
  command <<<
    combine_bracken_outputs.py \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  parameter_meta {
    files: "Bracken output files to combine."
    names: "Names for each input file - to be used in column headers of output [separate names with commas]"
    name_output_file: "Name of output file with combined Bracken results."
  }
}
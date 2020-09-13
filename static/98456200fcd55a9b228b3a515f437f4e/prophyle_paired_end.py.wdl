version 1.0

task ProphylePairedEndpy {
  input {
    File? output_file
  }
  command <<<
    prophyle_paired_end_py \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    output_file: "output file [stdout]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}
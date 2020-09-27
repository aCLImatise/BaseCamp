version 1.0

task NormGeneCountspy {
  input {
    File? output_file
    String? f
  }
  command <<<
    NormGeneCounts_py \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    output_file: ""
    f: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}
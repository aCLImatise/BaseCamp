version 1.0

task MakePpRstFilepy {
  input {
    Boolean? verbose
    File? input_script
    Directory? output_dir
  }
  command <<<
    make_pp_rst_file_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(input_script) then ("--input_script " +  '"' + input_script + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    input_script: "This is the input script for which to  make a .rst\\nfile [REQUIRED]"
    output_dir: "output directory for .rst files [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}
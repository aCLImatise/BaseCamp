version 1.0

task MakePpRstFile.py {
  input {
    String? input_script
    String? output_dir
  }
  command <<<
    make_pp_rst_file.py \
      ~{if defined(input_script) then ("--input_script " +  '"' + input_script + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    input_script: "This is the input script for which to  make a .rst file [REQUIRED]"
    output_dir: "output directory for .rst files [REQUIRED]"
  }
}
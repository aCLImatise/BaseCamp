version 1.0

task PrintPicrustConfigpy {
  input {
    Boolean? verbose
    String print_pic_rust_config_do_tpy
  }
  command <<<
    print_picrust_config_py \
      ~{print_pic_rust_config_do_tpy} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for debugging\\n[default: False]\\n"
    print_pic_rust_config_do_tpy: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}
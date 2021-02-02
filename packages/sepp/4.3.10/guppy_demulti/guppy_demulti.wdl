version 1.0

task GuppyDemulti {
  input {
    Boolean? out_dir
    Boolean? prefix
    Boolean? help
    String de_multi
    String place_file
    String? s
  }
  command <<<
    guppy demulti \
      ~{de_multi} \
      ~{place_file} \
      ~{s} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    help: "Display this list of options"
    de_multi: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}
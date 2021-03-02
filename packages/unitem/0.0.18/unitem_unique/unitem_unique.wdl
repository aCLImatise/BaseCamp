version 1.0

task UnitemUnique {
  input {
    Directory? extension
    Boolean? silent
    String bin_dir
  }
  command <<<
    unitem unique \
      ~{bin_dir} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/unitem:0.0.18--py_0"
  }
  parameter_meta {
    extension: "extension of bins (all other files in directory are\\nignored) (default: fna)"
    silent: "suppress output of logger"
    bin_dir: "directory containing bins"
  }
  output {
    File out_stdout = stdout()
  }
}
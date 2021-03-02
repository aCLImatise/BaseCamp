version 1.0

task CheckmUnique {
  input {
    Directory? extension
    String bin_dir
  }
  command <<<
    checkm unique \
      ~{bin_dir} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/checkm-genome:1.1.3--py_1"
  }
  parameter_meta {
    extension: "extension of bins (all other files in bin directory are ignored) (default: fna)"
    bin_dir: "directory containing bins (fasta format)"
  }
  output {
    File out_stdout = stdout()
  }
}
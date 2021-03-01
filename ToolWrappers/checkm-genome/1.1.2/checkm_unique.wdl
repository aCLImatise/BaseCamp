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
    docker: "None"
  }
  parameter_meta {
    extension: "extension of bins (all other files in bin directory are ignored) (default: fna)"
    bin_dir: "directory containing bins (fasta format)"
  }
  output {
    File out_stdout = stdout()
  }
}
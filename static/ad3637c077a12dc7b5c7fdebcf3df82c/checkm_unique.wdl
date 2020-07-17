version 1.0

task CheckmUnique {
  input {
    String? extension
    String bin_dir
  }
  command <<<
    checkm unique \
      ~{bin_dir} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""}
  >>>
  parameter_meta {
    extension: "extension of bins (all other files in bin directory are ignored) (default: fna)"
    bin_dir: "directory containing bins (fasta format)"
  }
}
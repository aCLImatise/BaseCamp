version 1.0

task MakeTree {
  input {
    Boolean? fast_a
    String? depth
    File? file_extension_gz
  }
  command <<<
    makeTree \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(file_extension_gz) then ("--output " +  '"' + file_extension_gz + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "Fasta input file. Mandatory option."
    depth: "of the tree structure. Mandatory option."
    file_extension_gz: "file. If the extension is not *gz, it is added. Mandatory option."
  }
  output {
    File out_stdout = stdout()
  }
}
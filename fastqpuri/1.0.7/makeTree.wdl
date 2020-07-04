version 1.0

task MakeTree {
  input {
    Boolean? fast_a
    String? depth
    String? file_extension_it
  }
  command <<<
    makeTree \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(file_extension_it) then ("--output " +  '"' + file_extension_it + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "Fasta input file. Mandatory option."
    depth: "of the tree structure. Mandatory option. "
    file_extension_it: "file. If the extension is not *gz, it is added. Mandatory option."
  }
}
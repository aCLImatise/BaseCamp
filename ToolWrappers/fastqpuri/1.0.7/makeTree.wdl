version 1.0

task MakeTree {
  input {
    Boolean? fast_a
    String? depth
    File? file_extension_is
  }
  command <<<
    makeTree \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(file_extension_is) then ("--output " +  '"' + file_extension_is + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "Fasta input file. Mandatory option."
    depth: "of the tree structure. Mandatory option."
    file_extension_is: "file. If the extension is not *gz, it is added. Mandatory option."
  }
  output {
    File out_stdout = stdout()
  }
}
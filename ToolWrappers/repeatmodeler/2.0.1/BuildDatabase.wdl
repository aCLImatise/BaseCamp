version 1.0

task BuildDatabase {
  input {
    Boolean? dir
    File? batch
    String? name
    String? engine
    String line_dot
  }
  command <<<
    BuildDatabase \
      ~{line_dot} \
      ~{if (dir) then "-dir" else ""} \
      ~{if defined(batch) then ("-batch " +  '"' + batch + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(engine) then ("-engine " +  '"' + engine + '"') else ""}
  >>>
  parameter_meta {
    dir: "<dir containing fasta files *.fa, *.fasta,\\n*.fast, *.FA, *.FASTA, *.FAST, *.dna,\\nand  *.DNA >"
    batch: ""
    name: "The name of the database to create."
    engine: "The name of the search engine we are using. I.e abblast/wublast or\\nrmblast."
    line_dot: "- Providing the name of a directory containing FASTA files "
  }
  output {
    File out_stdout = stdout()
  }
}
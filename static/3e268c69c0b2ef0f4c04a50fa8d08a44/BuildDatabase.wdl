version 1.0

task BuildDatabase {
  input {
    Boolean? dir
    String? name
    String? engine
    File? batch
    String line_dot
  }
  command <<<
    BuildDatabase \
      ~{line_dot} \
      ~{if (dir) then "-dir" else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(engine) then ("-engine " +  '"' + engine + '"') else ""} \
      ~{if defined(batch) then ("-batch " +  '"' + batch + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir: "<dir containing fasta files *.fa, *.fasta,\\n*.fast, *.FA, *.FASTA, *.FAST, *.dna,\\nand  *.DNA >"
    name: "The name of the database to create."
    engine: "The name of the search engine we are using. I.e abblast/wublast or\\nrmblast."
    batch: "The name of a file which contains the names of fasta files to\\nprocess. The files names are listed one per line and should be fully\\nqualified."
    line_dot: "- Providing the name of a directory containing FASTA files "
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task BuildDatabase {
  input {
    String? name
    String? engine
    Directory? dir
    File? batch
    String line_dot
  }
  command <<<
    BuildDatabase \
      ~{line_dot} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(engine) then ("-engine " +  '"' + engine + '"') else ""} \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""} \
      ~{if defined(batch) then ("-batch " +  '"' + batch + '"') else ""}
  >>>
  parameter_meta {
    name: "The name of the database to create."
    engine: "The name of the search engine we are using. I.e abblast/wublast or\\nrmblast."
    dir: "The name of a directory containing fasta files to be processed. The\\nfiles are recognized by their suffix. Only *.fa and *.fasta files\\nare processed."
    batch: "The name of a file which contains the names of fasta files to\\nprocess. The files names are listed one per line and should be fully\\nqualified."
    line_dot: "- Providing the name of a directory containing FASTA files "
  }
  output {
    File out_stdout = stdout()
  }
}
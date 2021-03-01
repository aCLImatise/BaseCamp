version 1.0

task SparseMash {
  input {
    Directory? dbname
    String? query
    Boolean? read
  }
  command <<<
    sparse mash \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if (read) then "--read" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dbname: "Name for the database folder. REQUIRED."
    query: "A genome in fasta format, or a set of reads in fastq format. REQUIRED."
    read: "Specify if query is a read set rather than an assembly."
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task SparsePredict {
  input {
    Directory? dbname
    String? map_db
    Directory? workspace
    Int? r_one
    Int? r_two
    Int? n_thread
  }
  command <<<
    sparse predict \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""} \
      ~{if defined(map_db) then ("--mapDB " +  '"' + map_db + '"') else ""} \
      ~{if defined(workspace) then ("--workspace " +  '"' + workspace + '"') else ""} \
      ~{if defined(r_one) then ("--r1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("--r2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(n_thread) then ("--n_thread " +  '"' + n_thread + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dbname: "Name for the database folder. REQUIRED"
    map_db: "Comma delimited names for sub-databases. REQUIRED.\\nDefault: representative,subpopulation,Virus"
    workspace: "Folder name for all outputs and intermediate results. REQUIRED."
    r_one: "SE read or first part of PE reads. REQUIRED."
    r_two: "Second part of PE reads."
    n_thread: "Number of threads to use. Default: 20\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
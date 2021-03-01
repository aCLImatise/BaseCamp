version 1.0

task Mdb03AddToDbpy {
  input {
    File? in_file
    Int? db
    File? name
    String? type
  }
  command <<<
    mdb03_add_to_db_py \
      ~{if defined(in_file) then ("-infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    in_file: "Input fasta file"
    db: "SQLite3 database"
    name: "Name of fasta file"
    type: "Data type either nucl or prot"
  }
  output {
    File out_stdout = stdout()
  }
}
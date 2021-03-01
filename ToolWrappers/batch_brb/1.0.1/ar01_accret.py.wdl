version 1.0

task Ar01Accretpy {
  input {
    File? fa
    String? out
    Int? db
    String? name
    String? type
  }
  command <<<
    ar01_accret_py \
      ~{if defined(fa) then ("-fa " +  '"' + fa + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    fa: "Fasta file of accessions to retrieve"
    out: "Name of output"
    db: "SQLite3 database"
    name: "Name of BLAST database"
    type: "Data type either nucl or prot"
  }
  output {
    File out_stdout = stdout()
  }
}
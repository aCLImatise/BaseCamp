version 1.0

task IndexDefaultSsuRrnaDb.py {
  input {
    String refRefDir
    Int maxMaxMemory
  }
  command <<<
    index_default_ssu_rrna_db.py \
      ~{if defined(refRefDir) then ("--ref_dir " +  '"' + refRefDir + '"') else ""} \
      ~{if defined(maxMaxMemory) then ("--max_memory " +  '"' + maxMaxMemory + '"') else ""}
  >>>
}
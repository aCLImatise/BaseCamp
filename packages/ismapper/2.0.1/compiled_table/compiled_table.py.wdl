version 1.0

task CompiledTablepy {
  input {
    Array[String] tables
    File? reference
    File? query
    String? cds
    String? trna
    String? rrna
    Float? imprecise
    Float? unconfident
    File? out_prefix
    String compilation
  }
  command <<<
    compiled_table_py \
      ~{compilation} \
      ~{if defined(tables) then ("--tables " +  '"' + tables + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(cds) then ("--cds " +  '"' + cds + '"') else ""} \
      ~{if defined(trna) then ("--trna " +  '"' + trna + '"') else ""} \
      ~{if defined(rrna) then ("--rrna " +  '"' + rrna + '"') else ""} \
      ~{if defined(imprecise) then ("--imprecise " +  '"' + imprecise + '"') else ""} \
      ~{if defined(unconfident) then ("--unconfident " +  '"' + unconfident + '"') else ""} \
      ~{if defined(out_prefix) then ("--out_prefix " +  '"' + out_prefix + '"') else ""}
  >>>
  parameter_meta {
    tables: "tables to compile"
    reference: "gbk file of reference"
    query: "fasta file for insertion sequence query for"
    cds: "qualifier containing gene information (default\\nproduct). Also note that all CDS features MUST have a\\nlocus_tag"
    trna: "qualifier containing gene information (default\\nproduct). Also note that all tRNA features MUST have a\\nlocus_tag"
    rrna: "qualifier containing gene information (default\\nproduct). Also note that all rRNA features MUST have a\\nlocus_tag"
    imprecise: "Binary value for imprecise (*) hit (can be 1, 0 or\\n0.5), default is 1"
    unconfident: "Binary value for questionable (?) hit (can be 1, 0 or\\n0.5), default is 0"
    out_prefix: "Prefix for output file\\n"
    compilation: "--gap GAP             distance between regions to call overlapping, default"
  }
  output {
    File out_stdout = stdout()
    File out_out_prefix = "${in_out_prefix}"
  }
}
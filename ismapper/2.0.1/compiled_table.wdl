version 1.0

task CompiledTable.py {
  input {
    Array[String] tables
    String? reference
    String? query
    String? gap
    String? cds
    String? trna
    String? rrna
    String? imprecise
    String? unconfident
    String? out_prefix
  }
  command <<<
    compiled_table.py \
      ~{if defined(tables) then ("--tables " +  '"' + tables + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
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
    query: "fasta file for insertion sequence query for compilation"
    gap: "distance between regions to call overlapping, default is 0"
    cds: "qualifier containing gene information (default product). Also note that all CDS features MUST have a locus_tag"
    trna: "qualifier containing gene information (default product). Also note that all tRNA features MUST have a locus_tag"
    rrna: "qualifier containing gene information (default product). Also note that all rRNA features MUST have a locus_tag"
    imprecise: "Binary value for imprecise (*) hit (can be 1, 0 or 0.5), default is 1"
    unconfident: "Binary value for questionable (?) hit (can be 1, 0 or 0.5), default is 0"
    out_prefix: "Prefix for output file"
  }
}
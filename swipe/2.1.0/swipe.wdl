version 1.0

task Swipe {
  input {
    File? db
    File? query
    String? matrix
    String? penalty
    String? reward
    String? gap_open
    String? gap_extend
    String? num_descriptions
    String? num_alignments
    String? evalue
    String? mine_value
    String? min_score
    String? max_score
    String? num_threads
    String? out_fmt
    Boolean? show_gis
    String? sym_type
    String? strand
    String? query_gen_code
    String? db_gen_code
    File? taxid_list
    String? dump
    Boolean? show_taxid
    File? out
    String? db_size
  }
  command <<<
    swipe \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(penalty) then ("--penalty " +  '"' + penalty + '"') else ""} \
      ~{if defined(reward) then ("--reward " +  '"' + reward + '"') else ""} \
      ~{if defined(gap_open) then ("--gapopen " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gapextend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(num_descriptions) then ("--num_descriptions " +  '"' + num_descriptions + '"') else ""} \
      ~{if defined(num_alignments) then ("--num_alignments " +  '"' + num_alignments + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(mine_value) then ("--minevalue " +  '"' + mine_value + '"') else ""} \
      ~{if defined(min_score) then ("--min_score " +  '"' + min_score + '"') else ""} \
      ~{if defined(max_score) then ("--max_score " +  '"' + max_score + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{true="--show_gis" false="" show_gis} \
      ~{if defined(sym_type) then ("--symtype " +  '"' + sym_type + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(query_gen_code) then ("--query_gencode " +  '"' + query_gen_code + '"') else ""} \
      ~{if defined(db_gen_code) then ("--db_gencode " +  '"' + db_gen_code + '"') else ""} \
      ~{if defined(taxid_list) then ("--taxidlist " +  '"' + taxid_list + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""} \
      ~{true="--show_taxid" false="" show_taxid} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(db_size) then ("--dbsize " +  '"' + db_size + '"') else ""}
  >>>
  parameter_meta {
    db: "sequence database base name (required)"
    query: "query sequence filename (stdin)"
    matrix: "score matrix name or filename (BLOSUM62)"
    penalty: "penalty for nucleotide mismatch (-3)"
    reward: "reward for nucleotide match (1)"
    gap_open: "gap open penalty (11)"
    gap_extend: "gap extension penalty (1)"
    num_descriptions: "sequence descriptions to show (250)"
    num_alignments: "sequence alignments to show (100)"
    evalue: "maximum expect value of sequences to show (10.0)"
    mine_value: "minimum expect value of sequences to show (0.0)"
    min_score: "minimum score of sequences to show (1)"
    max_score: "maximum score of sequences to show (inf.)"
    num_threads: "number of threads to use [1-256] (1)"
    out_fmt: "output format [0,7-9=plain,xml,tsv,tsv+] (0)"
    show_gis: "show gi numbers in results (no)"
    sym_type: "symbol type/translation [0-4] (1)"
    strand: "query strands to search [1-3] (3)"
    query_gen_code: "query genetic code [1-23] (1)"
    db_gen_code: "database genetic code [1-23] (1)"
    taxid_list: "taxid list filename (none)"
    dump: "dump database [0-2=no,yes,split headers] (0)"
    show_taxid: "show taxid etc in results (no)"
    out: "output file (stdout)"
    db_size: "set effective database size (0)"
  }
}
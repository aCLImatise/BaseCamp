version 1.0

task Swipe {
  input {
    File? db
    File? query
    File? matrix
    Int? penalty
    Int? reward
    Int? gap_open
    Int? gap_extend
    Int? num_descriptions
    Int? num_alignments
    Float? evalue
    Float? mine_value
    Int? min_score
    Int? max_score
    Int? num_threads
    Int? out_fmt
    Boolean? show_gis
    Int? sym_type
    Int? strand
    Int? query_gen_code
    Int? db_gen_code
    File? taxid_list
    Int? dump
    Boolean? show_taxid
    File? out
    Int? db_size
    Int two_two_one_dot
  }
  command <<<
    swipe \
      ~{two_two_one_dot} \
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
      ~{if (show_gis) then "--show_gis" else ""} \
      ~{if defined(sym_type) then ("--symtype " +  '"' + sym_type + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(query_gen_code) then ("--query_gencode " +  '"' + query_gen_code + '"') else ""} \
      ~{if defined(db_gen_code) then ("--db_gencode " +  '"' + db_gen_code + '"') else ""} \
      ~{if defined(taxid_list) then ("--taxidlist " +  '"' + taxid_list + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""} \
      ~{if (show_taxid) then "--show_taxid" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(db_size) then ("--dbsize " +  '"' + db_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "sequence database base name (required)"
    query: "query sequence filename (stdin)"
    matrix: "/FILE     score matrix name or filename (BLOSUM62)"
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
    sym_type: "/NUM     symbol type/translation [0-4] (1)"
    strand: "/NUM      query strands to search [1-3] (3)"
    query_gen_code: "query genetic code [1-23] (1)"
    db_gen_code: "database genetic code [1-23] (1)"
    taxid_list: "taxid list filename (none)"
    dump: "dump database [0-2=no,yes,split headers] (0)"
    show_taxid: "show taxid etc in results (no)"
    out: "output file (stdout)"
    db_size: "set effective database size (0)"
    two_two_one_dot: "Usage: swipe [OPTIONS]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}
version 1.0

task BlobtoolsTaxify {
  input {
    File? hit_file
    Int? hit_column_q_seq_id
    Int? hit_column_s_seq_id
    Int? hit_column_score
    File? taxid_mapping_file
    Int? map_col_s_seq_id
    Int? map_col_taxid
    File? custom
    Int? custom_taxid
    Float? custom_score
    String general
  }
  command <<<
    blobtools taxify \
      ~{general} \
      ~{if defined(hit_file) then ("--hit_file " +  '"' + hit_file + '"') else ""} \
      ~{if defined(hit_column_q_seq_id) then ("--hit_column_qseqid " +  '"' + hit_column_q_seq_id + '"') else ""} \
      ~{if defined(hit_column_s_seq_id) then ("--hit_column_sseqid " +  '"' + hit_column_s_seq_id + '"') else ""} \
      ~{if defined(hit_column_score) then ("--hit_column_score " +  '"' + hit_column_score + '"') else ""} \
      ~{if defined(taxid_mapping_file) then ("--taxid_mapping_file " +  '"' + taxid_mapping_file + '"') else ""} \
      ~{if defined(map_col_s_seq_id) then ("--map_col_sseqid " +  '"' + map_col_s_seq_id + '"') else ""} \
      ~{if defined(map_col_taxid) then ("--map_col_taxid " +  '"' + map_col_taxid + '"') else ""} \
      ~{if defined(custom) then ("--custom " +  '"' + custom + '"') else ""} \
      ~{if defined(custom_taxid) then ("--custom_taxid " +  '"' + custom_taxid + '"') else ""} \
      ~{if defined(custom_score) then ("--custom_score " +  '"' + custom_score + '"') else ""}
  >>>
  parameter_meta {
    hit_file: "BLAST/Diamond similarity search result (TSV format).\\nDefaults assume \\\"-outfmt '6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore'\\\""
    hit_column_q_seq_id: "Zero-based column of qseqid in similarity search result [default: 0]\\nChange if different format than (-outfmt '6')"
    hit_column_s_seq_id: "Zero-based column of sseqid in similarity search result [default: 1]\\nChange if different format than (-outfmt '6')"
    hit_column_score: "Zero-based column of (bit)score in similarity search result [default: 11]\\nChange if different format than (-outfmt '6')"
    taxid_mapping_file: "TaxID mapping file (contains seqid and taxid)"
    map_col_s_seq_id: "Zero-based column of sseqid in TaxID mapping file (it will search for sseqid in this column)"
    map_col_taxid: "Zero-based Column of taxid in TaxID mapping file (it will extract for taxid from this column)"
    custom: "File containing list of sequence IDs"
    custom_taxid: "TaxID to assign to all sequence IDs in list"
    custom_score: "Score to assign to all sequence IDs in list"
    general: "-o, --out <PREFIX>                  Output prefix"
  }
  output {
    File out_stdout = stdout()
  }
}
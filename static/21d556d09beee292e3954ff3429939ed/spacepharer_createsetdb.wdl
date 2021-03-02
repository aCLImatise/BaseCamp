version 1.0

task SpacepharerCreatesetdb {
  input {
    Int? dbtype
    Boolean? shuffle
    Int? created_b_mode
    Int? id_offset
    Int? translation_table
    Boolean? add_orf_stop
    String? stat
    Boolean? tsv
    Int? reverse_fragments
    Int? extractor_f_spacer
    Int? compressed
    Int? verbosity_level_errors
    Int? threads
  }
  command <<<
    spacepharer createsetdb \
      ~{if defined(dbtype) then ("--dbtype " +  '"' + dbtype + '"') else ""} \
      ~{if defined(shuffle) then ("--shuffle " +  '"' + shuffle + '"') else ""} \
      ~{if defined(created_b_mode) then ("--createdb-mode " +  '"' + created_b_mode + '"') else ""} \
      ~{if defined(id_offset) then ("--id-offset " +  '"' + id_offset + '"') else ""} \
      ~{if defined(translation_table) then ("--translation-table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(add_orf_stop) then ("--add-orf-stop " +  '"' + add_orf_stop + '"') else ""} \
      ~{if defined(stat) then ("--stat " +  '"' + stat + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if defined(reverse_fragments) then ("--reverse-fragments " +  '"' + reverse_fragments + '"') else ""} \
      ~{if defined(extractor_f_spacer) then ("--extractorf-spacer " +  '"' + extractor_f_spacer + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dbtype: "Database type 0: auto, 1: amino acid 2: nucleotides [0]"
    shuffle: "Shuffle input database [1]"
    created_b_mode: "Createdb mode 0: copy data, 1: soft link data and write new index (works only with single line fasta/q) [0]"
    id_offset: "Numeric ids in index file are offset by this value [0]"
    translation_table: "1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE\\n9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL\\n15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL\\n23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA\\n29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]"
    add_orf_stop: "Add stop codon '*' at complete start and end [0]"
    stat: "One of: linecount, mean, doolittle, charges, seqlen, firstline []"
    tsv: "Return output in TSV format [0]"
    reverse_fragments: "Reverse AA fragments to compute under null [0,1] [0]"
    extractor_f_spacer: "change parameter settings for extractorfs when createsetdb for spacer db [0,1] [0]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    threads: "Number of CPU-cores used (all by default) [8]"
  }
  output {
    File out_stdout = stdout()
  }
}
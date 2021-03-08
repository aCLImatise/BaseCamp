version 1.0

task MmseqsMultihitdb {
  input {
    Int? dbtype
    Boolean? shuffle
    Int? created_b_mode
    Int? id_offset
    Int? min_length
    Int? max_length
    Int? max_gaps
    Int? contig_start_mode
    Int? contig_end_mode
    Int? orf_start_mode
    Int? forward_frames
    Int? reverse_frames
    Int? translation_table
    Int? translate
    Boolean? use_all_table_starts
    Boolean? add_orf_stop
    String? stat
    Boolean? tsv
    Int? compressed
    Int? verbosity_level_errors
    Int? threads
    Int? write_lookup
    Int? create_lookup
  }
  command <<<
    mmseqs multihitdb \
      ~{if defined(dbtype) then ("--dbtype " +  '"' + dbtype + '"') else ""} \
      ~{if defined(shuffle) then ("--shuffle " +  '"' + shuffle + '"') else ""} \
      ~{if defined(created_b_mode) then ("--createdb-mode " +  '"' + created_b_mode + '"') else ""} \
      ~{if defined(id_offset) then ("--id-offset " +  '"' + id_offset + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(max_gaps) then ("--max-gaps " +  '"' + max_gaps + '"') else ""} \
      ~{if defined(contig_start_mode) then ("--contig-start-mode " +  '"' + contig_start_mode + '"') else ""} \
      ~{if defined(contig_end_mode) then ("--contig-end-mode " +  '"' + contig_end_mode + '"') else ""} \
      ~{if defined(orf_start_mode) then ("--orf-start-mode " +  '"' + orf_start_mode + '"') else ""} \
      ~{if defined(forward_frames) then ("--forward-frames " +  '"' + forward_frames + '"') else ""} \
      ~{if defined(reverse_frames) then ("--reverse-frames " +  '"' + reverse_frames + '"') else ""} \
      ~{if defined(translation_table) then ("--translation-table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(translate) then ("--translate " +  '"' + translate + '"') else ""} \
      ~{if defined(use_all_table_starts) then ("--use-all-table-starts " +  '"' + use_all_table_starts + '"') else ""} \
      ~{if defined(add_orf_stop) then ("--add-orf-stop " +  '"' + add_orf_stop + '"') else ""} \
      ~{if defined(stat) then ("--stat " +  '"' + stat + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_lookup) then ("--write-lookup " +  '"' + write_lookup + '"') else ""} \
      ~{if defined(create_lookup) then ("--create-lookup " +  '"' + create_lookup + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    dbtype: "Database type 0: auto, 1: amino acid 2: nucleotides [0]"
    shuffle: "Shuffle input database [1]"
    created_b_mode: "Createdb mode 0: copy data, 1: soft link data and write new index (works only with single line fasta/q) [0]"
    id_offset: "Numeric ids in index file are offset by this value [0]"
    min_length: "Minimum codon number in open reading frames [30]"
    max_length: "Maximum codon number in open reading frames [32734]"
    max_gaps: "Maximum number of codons with gaps or unknown residues before an open reading frame is rejected [2147483647]"
    contig_start_mode: "Contig start can be 0: incomplete, 1: complete, 2: both [2]"
    contig_end_mode: "Contig end can be 0: incomplete, 1: complete, 2: both [2]"
    orf_start_mode: "Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last encountered start to stop (no start in the middle) [1]"
    forward_frames: "Comma-separated list of frames on the forward strand to be extracted [1,2,3]"
    reverse_frames: "Comma-separated list of frames on the reverse strand to be extracted [1,2,3]"
    translation_table: "1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE\\n9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL\\n15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL\\n23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA\\n29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]"
    translate: "Translate ORF to amino acid [0]"
    use_all_table_starts: "Use all alternatives for a start codon in the genetic table, if false - only ATG (AUG) [0]"
    add_orf_stop: "Add stop codon '*' at complete start and end [0]"
    stat: "One of: linecount, mean, doolittle, charges, seqlen, firstline []"
    tsv: "Return output in TSV format [0]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    threads: "Number of CPU-cores used (all by default) [2]"
    write_lookup: "write .lookup file containing mapping from internal id, fasta id and file number [1]"
    create_lookup: "Create database lookup file (can be very large) [0]"
  }
  output {
    File out_stdout = stdout()
  }
}
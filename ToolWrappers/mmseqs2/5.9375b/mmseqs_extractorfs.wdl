version 1.0

task MmseqsExtractorfs {
  input {
    Boolean? min_length
    Boolean? max_length
    Boolean? max_gaps
    Boolean? contig_start_mode
    Boolean? contig_end_mode
    Boolean? orf_start_mode
    Boolean? forward_frames
    Boolean? reverse_frames
    Boolean? translation_table
    Boolean? use_all_table_starts
    Boolean? id_offset
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs extractorfs \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (max_length) then "--max-length" else ""} \
      ~{if (max_gaps) then "--max-gaps" else ""} \
      ~{if (contig_start_mode) then "--contig-start-mode" else ""} \
      ~{if (contig_end_mode) then "--contig-end-mode" else ""} \
      ~{if (orf_start_mode) then "--orf-start-mode" else ""} \
      ~{if (forward_frames) then "--forward-frames" else ""} \
      ~{if (reverse_frames) then "--reverse-frames" else ""} \
      ~{if (translation_table) then "--translation-table" else ""} \
      ~{if (use_all_table_starts) then "--use-all-table-starts" else ""} \
      ~{if (id_offset) then "--id-offset" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_length: "1               minimum codon number in open reading frames"
    max_length: "2147483647      maximum codon number in open reading frames"
    max_gaps: "2147483647      maximum number of codons with gaps or unknown residues before an open reading frame is rejected"
    contig_start_mode: "2               Contig start can be 0: incomplete, 1: complete, 2: both"
    contig_end_mode: "2               Contig end can be 0: incomplete, 1: complete, 2: both"
    orf_start_mode: "0               Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last encountered start to stop (no start in the middle)"
    forward_frames: "1,2,3           comma-seperated list of ORF frames on the forward strand to be extracted"
    reverse_frames: "1,2,3           comma-seperated list of ORF frames on the reverse strand to be extracted"
    translation_table: "1               1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE, 9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL, 15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL, 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA, 29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA"
    use_all_table_starts: "false           use all alteratives for a start codon in the genetic table, if false - only ATG (AUG)"
    id_offset: "0               numeric ids in index file are offset by this value"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}
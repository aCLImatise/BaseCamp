version 1.0

task Gffread {
  input {
    Boolean? discard_transcripts_having
    Boolean? discard_transcripts_shorter
    Boolean? only_show_transcripts
    Boolean? r_option_discard
    Boolean? discard_singleexon_transcripts
    Boolean? coding_discard_mrnas
    String? nc
    Boolean? ignore_locus
    Boolean? use_description_field
    Boolean? seqinfofsize_tabdelimited_file
    Boolean? sort_alpha
    Boolean? sort_by
    Boolean? preserve_gff_attributes
    Boolean? keep_exon_attrs
    Boolean? keep_attributes_move
    Boolean? keep_genes
    Boolean? keep_comments
    Boolean? process_other_records
    Boolean? discard_mrnas_cds
    Boolean? v_option_check
    Boolean? v_option_singleexon
    Boolean? add_transcript_level
    Boolean? add_has_cds
    String? adj_stop
    Boolean? discard_multiexon_mrnas
    Boolean? discard_mrnas_codonor
    Boolean? no_pseudo
    Boolean? in_bed
    Boolean? in_tlf
    Boolean? stream
    Boolean? merge
    File? m_option_write
    Boolean? cluster_only
    Boolean? m_option_also
    Boolean? m_option_no
    Boolean? m_option_enforce
    Boolean? force_exons
    Boolean? gene_two_exon
    Boolean? t_adopt
    Boolean? decode_url_encoded
    Boolean? merge_close_exons
    Boolean? full_path_names
    Boolean? write_spliced_exons
    String? w_add
    Boolean? write_spliced_cds
    Boolean? write_protein_file
    Boolean? w_options_write
    Boolean? y_option_use
    Boolean? ensembl_gtf_gff
    Boolean? chrreplace_name_mapping
    Boolean? use_trackname_nd
    Boolean? write_records_stdout
    Boolean? main_output_be
    Int? bed
    String? tlf
    String? table
    String? warn_duplicate_transcript
  }
  command <<<
    gffread \
      ~{if (discard_transcripts_having) then "-i" else ""} \
      ~{if (discard_transcripts_shorter) then "-l" else ""} \
      ~{if (only_show_transcripts) then "-r" else ""} \
      ~{if (r_option_discard) then "-R" else ""} \
      ~{if (discard_singleexon_transcripts) then "-U" else ""} \
      ~{if (coding_discard_mrnas) then "-C" else ""} \
      ~{if defined(nc) then ("--nc " +  '"' + nc + '"') else ""} \
      ~{if (ignore_locus) then "--ignore-locus" else ""} \
      ~{if (use_description_field) then "-A" else ""} \
      ~{if (seqinfofsize_tabdelimited_file) then "-s" else ""} \
      ~{if (sort_alpha) then "--sort-alpha" else ""} \
      ~{if (sort_by) then "--sort-by" else ""} \
      ~{if (preserve_gff_attributes) then "-F" else ""} \
      ~{if (keep_exon_attrs) then "--keep-exon-attrs" else ""} \
      ~{if (keep_attributes_move) then "-G" else ""} \
      ~{if (keep_genes) then "--keep-genes" else ""} \
      ~{if (keep_comments) then "--keep-comments" else ""} \
      ~{if (process_other_records) then "-O" else ""} \
      ~{if (discard_mrnas_cds) then "-V" else ""} \
      ~{if (v_option_check) then "-H" else ""} \
      ~{if (v_option_singleexon) then "-B" else ""} \
      ~{if (add_transcript_level) then "-P" else ""} \
      ~{if (add_has_cds) then "--add-hasCDS" else ""} \
      ~{if defined(adj_stop) then ("--adj-stop " +  '"' + adj_stop + '"') else ""} \
      ~{if (discard_multiexon_mrnas) then "-N" else ""} \
      ~{if (discard_mrnas_codonor) then "-J" else ""} \
      ~{if (no_pseudo) then "--no-pseudo" else ""} \
      ~{if (in_bed) then "--in-bed" else ""} \
      ~{if (in_tlf) then "--in-tlf" else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if defined(m_option_write) then ("-d " +  '"' + m_option_write + '"') else ""} \
      ~{if (cluster_only) then "--cluster-only" else ""} \
      ~{if (m_option_also) then "-K" else ""} \
      ~{if (m_option_no) then "-Q" else ""} \
      ~{if (m_option_enforce) then "-Y" else ""} \
      ~{if (force_exons) then "--force-exons" else ""} \
      ~{if (gene_two_exon) then "--gene2exon" else ""} \
      ~{if (t_adopt) then "--t-adopt" else ""} \
      ~{if (decode_url_encoded) then "-D" else ""} \
      ~{if (merge_close_exons) then "-Z" else ""} \
      ~{if (full_path_names) then "-g" else ""} \
      ~{if (write_spliced_exons) then "-w" else ""} \
      ~{if defined(w_add) then ("--w-add " +  '"' + w_add + '"') else ""} \
      ~{if (write_spliced_cds) then "-x" else ""} \
      ~{if (write_protein_file) then "-y" else ""} \
      ~{if (w_options_write) then "-W" else ""} \
      ~{if (y_option_use) then "-S" else ""} \
      ~{if (ensembl_gtf_gff) then "-L" else ""} \
      ~{if (chrreplace_name_mapping) then "-m" else ""} \
      ~{if (use_trackname_nd) then "-t" else ""} \
      ~{if (write_records_stdout) then "-o" else ""} \
      ~{if (main_output_be) then "-T" else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(tlf) then ("--tlf " +  '"' + tlf + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(warn_duplicate_transcript) then ("-v " +  '"' + warn_duplicate_transcript + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gffread:0.12.1--h8b12597_0"
  }
  parameter_meta {
    discard_transcripts_having: "discard transcripts having an intron larger than <maxintron>"
    discard_transcripts_shorter: "discard transcripts shorter than <minlen> bases"
    only_show_transcripts: "only show transcripts overlapping coordinate range <start>..<end>\\n(on chromosome/contig <chr>, strand <strand> if provided)"
    r_option_discard: "for -r option, discard all transcripts that are not fully\\ncontained within the given range"
    discard_singleexon_transcripts: "discard single-exon transcripts"
    coding_discard_mrnas: "coding only: discard mRNAs that have no CDS features"
    nc: "only: discard mRNAs that have CDS features"
    ignore_locus: ": discard locus features and attributes found in the input"
    use_description_field: "use the description field from <seq_info.fsize> and add it\\nas the value for a 'descr' attribute to the GFF record"
    seqinfofsize_tabdelimited_file: "<seq_info.fsize> is a tab-delimited file providing this info\\nfor each of the mapped sequences:\\n<seq-name> <seq-length> <seq-description>\\n(useful for -A option with mRNA/EST/protein mappings)"
    sort_alpha: ": chromosomes (reference sequences) are sorted alphabetically"
    sort_by: ": sort the reference sequences by the order in which their\\nnames are given in the <refseq.lst> file"
    preserve_gff_attributes: "preserve all GFF attributes (for non-exon features)"
    keep_exon_attrs: ": for -F option, do not attempt to reduce redundant\\nexon/CDS attributes"
    keep_attributes_move: "do not keep exon attributes, move them to the transcript feature\\n(for GFF3 output)"
    keep_genes: ": in transcript-only mode (default), also preserve gene records"
    keep_comments: ": for GFF3 input/output, try to preserve comments"
    process_other_records: "process other non-transcript GFF records (by default non-transcript\\nrecords are ignored)"
    discard_mrnas_cds: "discard any mRNAs with CDS having in-frame stop codons (requires -g)"
    v_option_check: "for -V option, check and adjust the starting CDS phase\\nif the original phase leads to a translation with an\\nin-frame stop codon"
    v_option_singleexon: "for -V option, single-exon transcripts are also checked on the\\nopposite strand (requires -g)"
    add_transcript_level: "add transcript level GFF attributes about the coding status of each\\ntranscript, including partialness or in-frame stop codons (requires -g)"
    add_has_cds: ": add a \\\"hasCDS\\\" attribute with value \\\"true\\\" for transcripts\\nthat have CDS features"
    adj_stop: "codon adjustment: enables -P and performs automatic\\nadjustment of the CDS stop coordinate if premature or downstream"
    discard_multiexon_mrnas: "discard multi-exon mRNAs that have any intron with a non-canonical\\nsplice site consensus (i.e. not GT-AG, GC-AG or AT-AC)"
    discard_mrnas_codonor: "discard any mRNAs that either lack initial START codon\\nor the terminal STOP codon, or have an in-frame stop codon\\n(i.e. only print mRNAs with a complete CDS)"
    no_pseudo: ": filter out records matching the 'pseudo' keyword"
    in_bed: ": input should be parsed as BED format (automatic if the input\\nfilename ends with .bed*)"
    in_tlf: ": input GFF-like one-line-per-transcript format without exon/CDS\\nfeatures (see --tlf option below); automatic if the input\\nfilename ends with .tlf)"
    stream: ": fast processing of input GFF/BED transcripts as they are received\\n((no sorting, exons must be grouped by transcript in the input data)"
    merge: ": cluster the input transcripts into loci, discarding\\n\\\"duplicated\\\" transcripts (those with the same exact introns\\nand fully contained or equal boundaries)"
    m_option_write: ": for -M option, write duplication info to file <dupinfo>"
    cluster_only: ": same as -M/--merge but without discarding any of the\\n\\\"duplicate\\\" transcripts, only create \\\"locus\\\" features"
    m_option_also: "for -M option: also discard as redundant the shorter, fully contained\\ntranscripts (intron chains matching a part of the container)"
    m_option_no: "for -M option, no longer require boundary containment when assessing\\nredundancy (can be combined with -K); only introns have to match for\\nmulti-exon transcripts, and >=80% overlap for single-exon transcripts"
    m_option_enforce: "for -M option, enforce -Q but also discard overlapping single-exon\\ntranscripts, even on the opposite strand (can be combined with -K)"
    force_exons: ": make sure that the lowest level GFF features are considered\\n\\\"exon\\\" features"
    gene_two_exon: ": for single-line genes not parenting any transcripts, add an\\nexon feature spanning the entire gene (treat it as a transcript)"
    t_adopt: ":  try to find a parent gene overlapping/containing a transcript\\nthat does not have any explicit gene Parent"
    decode_url_encoded: "decode url encoded characters within attributes"
    merge_close_exons: "merge very close exons into a single exon (when intron size<4)"
    full_path_names: "full path to a multi-fasta file with the genomic sequences\\nfor all input mappings, OR a directory with single-fasta files\\n(one per genomic sequence, with file names matching sequence names)"
    write_spliced_exons: "write a fasta file with spliced exons for each transcript"
    w_add: "for the -w option, extract additional <N> bases\\nboth upstream and downstream of the transcript boundaries"
    write_spliced_cds: "write a fasta file with spliced CDS for each GFF transcript"
    write_protein_file: "write a protein fasta file with the translation of CDS for each record"
    w_options_write: "for -w and -x options, write in the FASTA defline all the exon\\ncoordinates projected onto the spliced sequence;"
    y_option_use: "for -y option, use '*' instead of '.' as stop codon translation"
    ensembl_gtf_gff: "Ensembl GTF to GFF3 conversion (implies -F; should be used with -m)"
    chrreplace_name_mapping: "<chr_replace> is a name mapping table for converting reference\\nsequence names, having this 2-column format:\\n<original_ref_ID> <new_ref_ID>"
    use_trackname_nd: "use <trackname> in the 2nd column of each GFF/GTF output line"
    write_records_stdout: "write the records into <outfile> instead of stdout"
    main_output_be: "main output will be GTF instead of GFF3"
    bed: "records in BED format instead of default GFF3"
    tlf: "\\\"transcript line format\\\" which is like GFF\\nbut exons, CDS features and related data are stored as GFF\\nattributes in the transcript feature line, like this:\\nexoncount=N;exons=<exons>;CDSphase=<N>;CDS=<CDScoords>\\n<exons> is a comma-delimited list of exon_start-exon_end coordinates;\\n<CDScoords> is CDS_start:CDS_end coordinates or a list like <exons>"
    table: "a simple tab delimited format instead of GFF, with columns\\nhaving the values of GFF attributes given in <attrlist>; special\\npseudo-attributes (prefixed by @) are recognized:\\n@id, @geneid, @chr, @start, @end, @strand, @numexons, @exons,\\n@cds, @covlen, @cdslen\\nIf any of -w/-y/-x FASTA output files are enabled, the same fields\\n(excluding @id) are appended to the definition line of corresponding\\nFASTA records"
    warn_duplicate_transcript: "(warn about) duplicate transcript IDs and other potential\\nproblems with the given GFF/GTF records\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Gffread {
  input {
    Boolean? full_path_names
    Boolean? seqinfofsize_tabdelimited_file
    Boolean? discard_transcripts_having
    Boolean? only_show_transcripts
    Boolean? r_option_discard
    Boolean? discard_singleexon_transcripts
    Boolean? coding_discard_mrnas
    Boolean? full_gff_attribute
    Boolean? only_parse_attributes
    Boolean? use_description_field
    Boolean? process_also_records
    Boolean? discard_mrnas_cds
    Boolean? v_option_check
    Boolean? v_option_singleexon
    Boolean? discard_multiexon_mrnas
    Boolean? discard_mrnas_codonor
    Boolean? no_pseudo
    Boolean? merge
    File? m_option_write
    Boolean? cluster_only
    Boolean? m_option_also
    Boolean? m_option_remove
    Boolean? force_exons
    Boolean? expose_warn_duplicate
    Boolean? decode_url_encoded
    Boolean? merge_close_exons
    Boolean? write_spliced_exons
    Boolean? write_spliced_cds
    Boolean? w_options_also
    Boolean? write_protein_file
    Boolean? ensembl_gtf_gff
    File? chrreplace_reference_genomic
    Boolean? gff_records_written
    Boolean? use_trackname_second
    Int? output_gtf_format
    String input_gff
  }
  command <<<
    gffread \
      ~{input_gff} \
      ~{if (full_path_names) then "-g" else ""} \
      ~{if (seqinfofsize_tabdelimited_file) then "-s" else ""} \
      ~{if (discard_transcripts_having) then "-i" else ""} \
      ~{if (only_show_transcripts) then "-r" else ""} \
      ~{if (r_option_discard) then "-R" else ""} \
      ~{if (discard_singleexon_transcripts) then "-U" else ""} \
      ~{if (coding_discard_mrnas) then "-C" else ""} \
      ~{if (full_gff_attribute) then "-F" else ""} \
      ~{if (only_parse_attributes) then "-G" else ""} \
      ~{if (use_description_field) then "-A" else ""} \
      ~{if (process_also_records) then "-O" else ""} \
      ~{if (discard_mrnas_cds) then "-V" else ""} \
      ~{if (v_option_check) then "-H" else ""} \
      ~{if (v_option_singleexon) then "-B" else ""} \
      ~{if (discard_multiexon_mrnas) then "-N" else ""} \
      ~{if (discard_mrnas_codonor) then "-J" else ""} \
      ~{if (no_pseudo) then "--no-pseudo" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if defined(m_option_write) then ("-d " +  '"' + m_option_write + '"') else ""} \
      ~{if (cluster_only) then "--cluster-only" else ""} \
      ~{if (m_option_also) then "-K" else ""} \
      ~{if (m_option_remove) then "-Q" else ""} \
      ~{if (force_exons) then "--force-exons" else ""} \
      ~{if (expose_warn_duplicate) then "-E" else ""} \
      ~{if (decode_url_encoded) then "-D" else ""} \
      ~{if (merge_close_exons) then "-Z" else ""} \
      ~{if (write_spliced_exons) then "-w" else ""} \
      ~{if (write_spliced_cds) then "-x" else ""} \
      ~{if (w_options_also) then "-W" else ""} \
      ~{if (write_protein_file) then "-y" else ""} \
      ~{if (ensembl_gtf_gff) then "-L" else ""} \
      ~{if (chrreplace_reference_genomic) then "-m" else ""} \
      ~{if (gff_records_written) then "-o" else ""} \
      ~{if (use_trackname_second) then "-t" else ""} \
      ~{if defined(output_gtf_format) then ("-T " +  '"' + output_gtf_format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    full_path_names: "full path to a multi-fasta file with the genomic sequences\\nfor all input mappings, OR a directory with single-fasta files\\n(one per genomic sequence, with file names matching sequence names)"
    seqinfofsize_tabdelimited_file: "<seq_info.fsize> is a tab-delimited file providing this info\\nfor each of the mapped sequences:\\n<seq-name> <seq-length> <seq-description>\\n(useful for -A option with mRNA/EST/protein mappings)"
    discard_transcripts_having: "discard transcripts having an intron larger than <maxintron>"
    only_show_transcripts: "only show transcripts overlapping coordinate range <start>..<end>\\n(on chromosome/contig <chr>, strand <strand> if provided)"
    r_option_discard: "for -r option, discard all transcripts that are not fully\\ncontained within the given range"
    discard_singleexon_transcripts: "discard single-exon transcripts"
    coding_discard_mrnas: "coding only: discard mRNAs that have no CDS feature"
    full_gff_attribute: "full GFF attribute preservation (all attributes are shown)"
    only_parse_attributes: "only parse additional exon attributes from the first exon\\nand move them to the mRNA level (useful for GTF input)"
    use_description_field: "use the description field from <seq_info.fsize> and add it\\nas the value for a 'descr' attribute to the GFF record"
    process_also_records: "process also non-transcript GFF records (by default non-transcript\\nrecords are ignored)"
    discard_mrnas_cds: "discard any mRNAs with CDS having in-frame stop codons"
    v_option_check: "for -V option, check and adjust the starting CDS phase\\nif the original phase leads to a translation with an\\nin-frame stop codon"
    v_option_singleexon: "for -V option, single-exon transcripts are also checked on the\\nopposite strand"
    discard_multiexon_mrnas: "discard multi-exon mRNAs that have any intron with a non-canonical\\nsplice site consensus (i.e. not GT-AG, GC-AG or AT-AC)"
    discard_mrnas_codonor: "discard any mRNAs that either lack initial START codon\\nor the terminal STOP codon, or have an in-frame stop codon\\n(only print mRNAs with a fulll, valid CDS)"
    no_pseudo: ": filter out records matching the 'pseudo' keyword"
    merge: ": cluster the input transcripts into loci, collapsing matching\\ntranscripts (those with the same exact introns and fully contained)"
    m_option_write: ": for -M option, write collapsing info to file <dupinfo>"
    cluster_only: ": same as --merge but without collapsing matching transcripts"
    m_option_also: "for -M option: also collapse shorter, fully contained transcripts\\nwith fewer introns than the container"
    m_option_remove: "for -M option, remove the containment restriction:\\n(multi-exon transcripts will be collapsed if just their introns match,\\nwhile single-exon transcripts can partially overlap (80%))"
    force_exons: ": make sure that the lowest level GFF features are printed as\\n\\\"exon\\\" features"
    expose_warn_duplicate: "expose (warn about) duplicate transcript IDs and other potential\\nproblems with the given GFF/GTF records"
    decode_url_encoded: "decode url encoded characters within attributes"
    merge_close_exons: "merge close exons into a single exon (for intron size<4)"
    write_spliced_exons: "write a fasta file with spliced exons for each GFF transcript"
    write_spliced_cds: "write a fasta file with spliced CDS for each GFF transcript"
    w_options_also: "for -w and -x options, also write for each fasta record the exon\\ncoordinates projected onto the spliced sequence"
    write_protein_file: "write a protein fasta file with the translation of CDS for each record"
    ensembl_gtf_gff: "Ensembl GTF to GFF3 conversion (implies -F; should be used with -m)"
    chrreplace_reference_genomic: "<chr_replace> is a reference (genomic) sequence replacement table with\\nthis format:\\n<original_ref_ID> <new_ref_ID>\\nGFF records on reference sequences that are not found among the\\n<original_ref_ID> entries in this file will be filtered out"
    gff_records_written: "the \\\"filtered\\\" GFF records will be written to <outfile.gff>\\n(use -o- for printing to stdout)"
    use_trackname_second: "use <trackname> in the second column of each GFF output line"
    output_gtf_format: "will output GTF format instead of GFF3"
    input_gff: ""
  }
  output {
    File out_stdout = stdout()
    File out_chrreplace_reference_genomic = "${in_chrreplace_reference_genomic}"
  }
}
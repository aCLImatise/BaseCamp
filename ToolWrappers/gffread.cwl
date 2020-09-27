class: CommandLineTool
id: gffread.cwl
inputs:
- id: in_full_path_mappings
  doc: "full path to a multi-fasta file with the genomic sequences\nfor all input\
    \ mappings, OR a directory with single-fasta files\n(one per genomic sequence,\
    \ with file names matching sequence names)"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_seqinfofsize_tabdelimited_file
  doc: "<seq_info.fsize> is a tab-delimited file providing this info\nfor each of\
    \ the mapped sequences:\n<seq-name> <seq-length> <seq-description>\n(useful for\
    \ -A option with mRNA/EST/protein mappings)"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_discard_transcripts_having
  doc: discard transcripts having an intron larger than <maxintron>
  type: boolean
  inputBinding:
    prefix: -i
- id: in_only_show_coordinate
  doc: "only show transcripts overlapping coordinate range <start>..<end>\n(on chromosome/contig\
    \ <chr>, strand <strand> if provided)"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_r_option_discard
  doc: "for -r option, discard all transcripts that are not fully\ncontained within\
    \ the given range"
  type: boolean
  inputBinding:
    prefix: -R
- id: in_discard_singleexon_transcripts
  doc: discard single-exon transcripts
  type: boolean
  inputBinding:
    prefix: -U
- id: in_coding_only_discard
  doc: 'coding only: discard mRNAs that have no CDS feature'
  type: boolean
  inputBinding:
    prefix: -C
- id: in_full_gff_attribute
  doc: full GFF attribute preservation (all attributes are shown)
  type: boolean
  inputBinding:
    prefix: -F
- id: in_only_parse_additional
  doc: "only parse additional exon attributes from the first exon\nand move them to\
    \ the mRNA level (useful for GTF input)"
  type: boolean
  inputBinding:
    prefix: -G
- id: in_use_description_field
  doc: "use the description field from <seq_info.fsize> and add it\nas the value for\
    \ a 'descr' attribute to the GFF record"
  type: boolean
  inputBinding:
    prefix: -A
- id: in_process_also_gff
  doc: "process also non-transcript GFF records (by default non-transcript\nrecords\
    \ are ignored)"
  type: boolean
  inputBinding:
    prefix: -O
- id: in_discard_having_codons
  doc: discard any mRNAs with CDS having in-frame stop codons
  type: boolean
  inputBinding:
    prefix: -V
- id: in_v_option_check
  doc: "for -V option, check and adjust the starting CDS phase\nif the original phase\
    \ leads to a translation with an\nin-frame stop codon"
  type: boolean
  inputBinding:
    prefix: -H
- id: in_v_option_singleexon
  doc: "for -V option, single-exon transcripts are also checked on the\nopposite strand"
  type: boolean
  inputBinding:
    prefix: -B
- id: in_discard_multiexon_mrnas
  doc: "discard multi-exon mRNAs that have any intron with a non-canonical\nsplice\
    \ site consensus (i.e. not GT-AG, GC-AG or AT-AC)"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_discard_lack_initial
  doc: "discard any mRNAs that either lack initial START codon\nor the terminal STOP\
    \ codon, or have an in-frame stop codon\n(only print mRNAs with a fulll, valid\
    \ CDS)"
  type: boolean
  inputBinding:
    prefix: -J
- id: in_no_pseudo
  doc: ": filter out records matching the 'pseudo' keyword"
  type: boolean
  inputBinding:
    prefix: --no-pseudo
- id: in_m_slash_merge
  doc: ": cluster the input transcripts into loci, collapsing matching\ntranscripts\
    \ (those with the same exact introns and fully contained)"
  type: boolean
  inputBinding:
    prefix: -M/--merge
- id: in_m_option_write
  doc: ': for -M option, write collapsing info to file <dupinfo>'
  type: File
  inputBinding:
    prefix: -d
- id: in_cluster_only
  doc: ': same as --merge but without collapsing matching transcripts'
  type: boolean
  inputBinding:
    prefix: --cluster-only
- id: in_m_option_also
  doc: "for -M option: also collapse shorter, fully contained transcripts\nwith fewer\
    \ introns than the container"
  type: boolean
  inputBinding:
    prefix: -K
- id: in_m_option_remove
  doc: "for -M option, remove the containment restriction:\n(multi-exon transcripts\
    \ will be collapsed if just their introns match,\nwhile single-exon transcripts\
    \ can partially overlap (80%))"
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_force_exons
  doc: ": make sure that the lowest level GFF features are printed as\n\"exon\" features"
  type: boolean
  inputBinding:
    prefix: --force-exons
- id: in_expose_warn_duplicate
  doc: "expose (warn about) duplicate transcript IDs and other potential\nproblems\
    \ with the given GFF/GTF records"
  type: boolean
  inputBinding:
    prefix: -E
- id: in_decode_url_encoded
  doc: decode url encoded characters within attributes
  type: boolean
  inputBinding:
    prefix: -D
- id: in_merge_close_exons
  doc: merge close exons into a single exon (for intron size<4)
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_write_spliced_exons
  doc: write a fasta file with spliced exons for each GFF transcript
  type: boolean
  inputBinding:
    prefix: -w
- id: in_write_spliced_cds
  doc: write a fasta file with spliced CDS for each GFF transcript
  type: boolean
  inputBinding:
    prefix: -x
- id: in_w_x_options
  doc: "for -w and -x options, also write for each fasta record the exon\ncoordinates\
    \ projected onto the spliced sequence"
  type: boolean
  inputBinding:
    prefix: -W
- id: in_write_protein_file
  doc: write a protein fasta file with the translation of CDS for each record
  type: boolean
  inputBinding:
    prefix: -y
- id: in_ensembl_gtf_gff
  doc: Ensembl GTF to GFF3 conversion (implies -F; should be used with -m)
  type: boolean
  inputBinding:
    prefix: -L
- id: in_chrreplace_reference_genomic
  doc: "<chr_replace> is a reference (genomic) sequence replacement table with\nthis\
    \ format:\n<original_ref_ID> <new_ref_ID>\nGFF records on reference sequences\
    \ that are not found among the\n<original_ref_ID> entries in this file will be\
    \ filtered out"
  type: File
  inputBinding:
    prefix: -m
- id: in_gff_records_will
  doc: "the \"filtered\" GFF records will be written to <outfile.gff>\n(use -o- for\
    \ printing to stdout)"
  type: boolean
  inputBinding:
    prefix: -o
- id: in_use_trackname_second
  doc: use <trackname> in the second column of each GFF output line
  type: boolean
  inputBinding:
    prefix: -t
- id: in_will_output_format
  doc: will output GTF format instead of GFF3
  type: long
  inputBinding:
    prefix: -T
- id: in_input_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_chrreplace_reference_genomic
  doc: "<chr_replace> is a reference (genomic) sequence replacement table with\nthis\
    \ format:\n<original_ref_ID> <new_ref_ID>\nGFF records on reference sequences\
    \ that are not found among the\n<original_ref_ID> entries in this file will be\
    \ filtered out"
  type: File
  outputBinding:
    glob: $(inputs.in_chrreplace_reference_genomic)
cwlVersion: v1.1
baseCommand:
- gffread

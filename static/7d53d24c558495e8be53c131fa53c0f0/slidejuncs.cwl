class: CommandLineTool
id: slidejuncs.cwl
inputs:
- id: in_max_slide
  doc: "Maximum number of nt to search 5' and 3' of intron\nboundaries (Default: 10)"
  type: long
  inputBinding:
    prefix: --maxslide
- id: in_ref
  doc: Reference file describing known splice junctions
  type: File
  inputBinding:
    prefix: --ref
- id: in_slide_canonical
  doc: "Slide junctions to canonical junctions if present\nwithin equal support region"
  type: boolean
  inputBinding:
    prefix: --slide_canonical
- id: in_quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: "Increase verbosity. With '-v', show every warning.\nWith '-vv', turn warnings\
    \ into exceptions. Cannot use\nwith '-q'. (Default: show each type of warning\
    \ once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_sequence_file
  doc: "[fasta | fastq | twobit | genbank | embl]\nA file of DNA sequence"
  type: File
  inputBinding:
    prefix: --sequence_file
- id: in_sequence_format
  doc: 'Format of sequence_file (Default: fasta).'
  type: string
  inputBinding:
    prefix: --sequence_format
- id: in_mask_annotation_files
  doc: "[BED | BigBed | GTF2 | GFF3 | PSL] [infile.[BED | BigBed | GTF2 | GFF3 | PSL]\
    \ ...]\nZero or more annotation files (max 1 file if BigBed)"
  type: File
  inputBinding:
    prefix: --mask_annotation_files
- id: in_mask_annotation_format
  doc: "Format of mask_annotation_files (Default: GTF2). Note:\nGFF3 assembly assumes\
    \ SO v.2.5.2 feature ontologies,\nwhich may or may not match your specific file."
  type: string
  inputBinding:
    prefix: --mask_annotation_format
- id: in_mask_add_three
  doc: "If supplied, coding regions will be extended by 3\nnucleotides at their 3'\
    \ ends (except for GTF2 files\nthat explicitly include `stop_codon` features).\
    \ Use if\nyour annotation file excludes stop codons from CDS."
  type: boolean
  inputBinding:
    prefix: --mask_add_three
- id: in_mask_tab_ix
  doc: "mask_annotation_files are tabix-compressed and indexed\n(Default: False).\
    \ Ignored for BigBed files."
  type: boolean
  inputBinding:
    prefix: --mask_tabix
- id: in_mask_sorted
  doc: "mask_annotation_files are sorted by chromosomal\nposition (Default: False)"
  type: boolean
  inputBinding:
    prefix: --mask_sorted
- id: in_mask_bed_extra_columns
  doc: "Number of extra columns in BED file (e.g. in custom\nENCODE formats) or list\
    \ of names for those columns.\n(Default: 0)."
  type: string[]
  inputBinding:
    prefix: --mask_bed_extra_columns
- id: in_mask_maxmem
  doc: "Maximum desired memory footprint in MB to devote to\nBigBed/BigWig files.\
    \ May be exceeded by large queries.\n(Default: 0, No maximum)"
  type: long
  inputBinding:
    prefix: --mask_maxmem
- id: in_mask_gff_transcript_types
  doc: "GFF3 feature types to include as transcripts, even if\nno exons are present\
    \ (for GFF3 only; default: use SO\nv2.5.3 specification)"
  type: string[]
  inputBinding:
    prefix: --mask_gff_transcript_types
- id: in_mask_gff_exon_types
  doc: "GFF3 feature types to include as exons (for GFF3 only;\ndefault: use SO v2.5.3\
    \ specification)"
  type: string[]
  inputBinding:
    prefix: --mask_gff_exon_types
- id: in_mask_gff_cds_types
  doc: "GFF3 feature types to include as CDS (for GFF3 only;\ndefault: use SO v2.5.3\
    \ specification)\n"
  type: string[]
  inputBinding:
    prefix: --mask_gff_cds_types
- id: in_sequence
  doc: G   C   T   C   T   A   C   T   A   G   N   N   N   C   T   A   C   T   A   G   A   T   G   G
  type: string
  inputBinding:
    position: 0
- id: in_one_dot
  doc: "If a mask file from crossmap\nis provided, junctions in which one or more\
    \ of the 5' and 3' splice\nsites appear in a repetitive region of the genome are\
    \ flagged as\nnon-informative and written to a separate file."
  type: long
  inputBinding:
    position: 0
- id: in_two_dot
  doc: "For remaining splice junctions, the extent of locally repeated nucleotide\n\
    sequence, if any, surrounding the query junction's splice donor and\nacceptor\
    \ sites, are determined in both the 5' and 3' directions.\nThis is the maximum\
    \ window (*equal-support region*) across which the\nactual splice junction could\
    \ be moved without reducing sequence support."
  type: long
  inputBinding:
    position: 1
- id: in_three_dot
  doc: "If there is one or more known splice junctions in this region, the\nquery\
    \ junction is assumed to match these, and the known junctions are\nreported rather\
    \ than the query."
  type: long
  inputBinding:
    position: 2
- id: in_four_dot
  doc: "If (3) is not satisfied, and the query junction is a canonical splice\njunction,\
    \ it is reported as is."
  type: long
  inputBinding:
    position: 3
- id: in_five_dot
  doc: "If (3) is not satisfied, and the query junction represents a non-canonical\n\
    splice junction, the program determines if one or more canonical splice\njunctions\
    \ is present in the equal-support region. If so, these canonical\nsplice junction\
    \ are reported rather than the query junction."
  type: long
  inputBinding:
    position: 4
- id: in_six_dot
  doc: If (5) is not satisfied, the non-canonical query junction is reported as-is.
  type: long
  inputBinding:
    position: 5
- id: in_out_base_repetitive_dot_bed
  doc: "Splice junctions in which one or more of the splice sites lands\nin a repetitive/degenerate\
    \ region of the genome, which gives rise to\nmapping ambiguities (step 1 above)"
  type: string
  inputBinding:
    position: 0
- id: in_out_base_shifted_known_dot_bed
  doc: "The result of shifting query splice junctions to known splice junctions\n\
    with equal sequence support (step 3 above)"
  type: string
  inputBinding:
    position: 1
- id: in_out_base_shifted_canonical_dot_bed
  doc: "The result of shifting non-canonical query splice junctions to canonical\n\
    splice junctions with equal sequence support (step 5 above)"
  type: string
  inputBinding:
    position: 2
- id: in_out_base_untouched_dot_bed
  doc: Query junctions reported without changes (steps 4 and 6 above)
  type: string
  inputBinding:
    position: 3
- id: in_input_dot_bed
  doc: BED file describing discovered junctions
  type: string
  inputBinding:
    position: 0
- id: in_out_base
  doc: Basename for output files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- slidejuncs

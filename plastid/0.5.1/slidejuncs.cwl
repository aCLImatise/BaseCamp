class: CommandLineTool
id: ../../../slidejuncs.cwl
inputs:
- id: max_slide
  doc: "Maximum number of nt to search 5' and 3' of intron boundaries (Default: 10)"
  type: long
  inputBinding:
    prefix: --maxslide
- id: ref
  doc: Reference file describing known splice junctions
  type: string
  inputBinding:
    prefix: --ref
- id: slide_canonical
  doc: Slide junctions to canonical junctions if present within equal support region
  type: boolean
  inputBinding:
    prefix: --slide_canonical
- id: quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings\
    \ into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: sequence_format
  doc: 'Format of sequence_file (Default: fasta).'
  type: string
  inputBinding:
    prefix: --sequence_format
- id: mask_annotation_format
  doc: 'Format of mask_annotation_files (Default: GTF2). Note: GFF3 assembly assumes
    SO v.2.5.2 feature ontologies, which may or may not match your specific file.'
  type: string
  inputBinding:
    prefix: --mask_annotation_format
- id: mask_add_three
  doc: If supplied, coding regions will be extended by 3 nucleotides at their 3' ends
    (except for GTF2 files that explicitly include `stop_codon` features). Use if
    your annotation file excludes stop codons from CDS.
  type: boolean
  inputBinding:
    prefix: --mask_add_three
- id: mask_tab_ix
  doc: 'mask_annotation_files are tabix-compressed and indexed (Default: False). Ignored
    for BigBed files.'
  type: boolean
  inputBinding:
    prefix: --mask_tabix
- id: mask_sorted
  doc: 'mask_annotation_files are sorted by chromosomal position (Default: False)'
  type: boolean
  inputBinding:
    prefix: --mask_sorted
- id: mask_bed_extra_columns
  doc: 'Number of extra columns in BED file (e.g. in custom ENCODE formats) or list
    of names for those columns. (Default: 0).'
  type: string[]
  inputBinding:
    prefix: --mask_bed_extra_columns
- id: mask_maxmem
  doc: 'Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May
    be exceeded by large queries. (Default: 0, No maximum)'
  type: string
  inputBinding:
    prefix: --mask_maxmem
- id: mask_gff_transcript_types
  doc: 'GFF3 feature types to include as transcripts, even if no exons are present
    (for GFF3 only; default: use SO v2.5.3 specification)'
  type: string[]
  inputBinding:
    prefix: --mask_gff_transcript_types
- id: mask_gff_exon_types
  doc: 'GFF3 feature types to include as exons (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --mask_gff_exon_types
- id: mask_gff_cds_types
  doc: 'GFF3 feature types to include as CDS (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --mask_gff_cds_types
- id: one_dot
  doc: "If a mask file from crossmap is provided, junctions in which one or more of\
    \ the 5' and 3' splice sites appear in a repetitive region of the genome are flagged\
    \ as non-informative and written to a separate file. "
  type: string
  inputBinding:
    position: 0
- id: two_dot
  doc: For remaining splice junctions, the extent of locally repeated nucleotide sequence,
    if any, surrounding the query junction's splice donor and acceptor sites, are
    determined in both the 5' and 3' directions. This is the maximum window (*equal-support
    region*) across which the actual splice junction could be moved without reducing
    sequence support.
  type: string
  inputBinding:
    position: 1
- id: three_dot
  doc: 'If there is one or more known splice junctions in this region, the query junction
    is assumed to match these, and the known junctions are reported rather than the
    query. '
  type: string
  inputBinding:
    position: 2
- id: four_dot
  doc: If (3) is not satisfied, and the query junction is a canonical splice junction,
    it is reported as is.
  type: string
  inputBinding:
    position: 3
- id: five_dot
  doc: If (3) is not satisfied, and the query junction represents a non-canonical
    splice junction, the program determines if one or more canonical splice junctions
    is present in the equal-support region. If so, these canonical splice junction
    are reported rather than the query junction.
  type: string
  inputBinding:
    position: 4
- id: six_dot
  doc: If (5) is not satisfied, the non-canonical query junction is reported as-is.
  type: string
  inputBinding:
    position: 5
- id: out_base_repetitive_dot_bed
  doc: Splice junctions in which one or more of the splice sites lands in a repetitive/degenerate
    region of the genome, which gives rise to mapping ambiguities (step 1 above)
  type: string
  inputBinding:
    position: 0
- id: out_base_shifted_known_dot_bed
  doc: The result of shifting query splice junctions to known splice junctions with
    equal sequence support (step 3 above)
  type: string
  inputBinding:
    position: 1
- id: out_base_shifted_canonical_dot_bed
  doc: The result of shifting non-canonical query splice junctions to canonical splice
    junctions with equal sequence support (step 5 above)
  type: string
  inputBinding:
    position: 2
- id: out_base_untouched_dot_bed
  doc: Query junctions reported without changes (steps 4 and 6 above)
  type: string
  inputBinding:
    position: 3
- id: input_dot_bed
  doc: BED file describing discovered junctions
  type: string
  inputBinding:
    position: 0
- id: out_base
  doc: Basename for output files
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- slidejuncs

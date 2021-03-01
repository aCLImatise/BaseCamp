class: CommandLineTool
id: metagene_generate.cwl
inputs:
- id: in_landmark
  doc: "Landmark around which to build metagene profile\n(Default: cds_start)"
  type: string?
  inputBinding:
    prefix: --landmark
- id: in_upstream
  doc: "Nucleotides to include upstream of landmark (Default:\n50)"
  type: long?
  inputBinding:
    prefix: --upstream
- id: in_downstream
  doc: "Nucleotides to include downstream of landmark\n(Default: 50)"
  type: long?
  inputBinding:
    prefix: --downstream
- id: in_group_by
  doc: "Attribute (e.g. in GTF2/GFF3 column 9) by which to\ngroup regions before generating\
    \ maximal spanning\nwindows (Default: group transcripts by gene using\n'gene_id'\
    \ attribute from GTF2, or 'Parent' attribute\nin GFF3)"
  type: long?
  inputBinding:
    prefix: --group_by
- id: in_quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: "Increase verbosity. With '-v', show every warning.\nWith '-vv', turn warnings\
    \ into exceptions. Cannot use\nwith '-q'. (Default: show each type of warning\
    \ once)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_annotation_files
  doc: "[BED | BigBed | GTF2 | GFF3] [infile.[BED | BigBed | GTF2 | GFF3] ...]\nZero\
    \ or more annotation files (max 1 file if BigBed)"
  type: File?
  inputBinding:
    prefix: --annotation_files
- id: in_annotation_format
  doc: "Format of annotation_files (Default: GTF2). Note: GFF3\nassembly assumes SO\
    \ v.2.5.2 feature ontologies, which\nmay or may not match your specific file."
  type: string?
  inputBinding:
    prefix: --annotation_format
- id: in_add_three
  doc: "If supplied, coding regions will be extended by 3\nnucleotides at their 3'\
    \ ends (except for GTF2 files\nthat explicitly include `stop_codon` features).\
    \ Use if\nyour annotation file excludes stop codons from CDS."
  type: boolean?
  inputBinding:
    prefix: --add_three
- id: in_tab_ix
  doc: "annotation_files are tabix-compressed and indexed\n(Default: False). Ignored\
    \ for BigBed files."
  type: boolean?
  inputBinding:
    prefix: --tabix
- id: in_sorted
  doc: "annotation_files are sorted by chromosomal position\n(Default: False)"
  type: boolean?
  inputBinding:
    prefix: --sorted
- id: in_bed_extra_columns
  doc: "Number of extra columns in BED file (e.g. in custom\nENCODE formats) or list\
    \ of names for those columns.\n(Default: 0)."
  type: string[]
  inputBinding:
    prefix: --bed_extra_columns
- id: in_mask_bed_extra_columns
  doc: "Number of extra columns in BED file (e.g. in custom\nENCODE formats) or list\
    \ of names for those columns.\n(Default: 0)."
  type: string[]
  inputBinding:
    prefix: --mask_bed_extra_columns
- id: in_maxmem
  doc: "Maximum desired memory footprint in MB to devote to\nBigBed/BigWig files.\
    \ May be exceeded by large queries.\n(Default: 0, No maximum)"
  type: long?
  inputBinding:
    prefix: --maxmem
- id: in_mask_maxmem
  doc: "Maximum desired memory footprint in MB to devote to\nBigBed/BigWig files.\
    \ May be exceeded by large queries.\n(Default: 0, No maximum)"
  type: long?
  inputBinding:
    prefix: --mask_maxmem
- id: in_gff_transcript_types
  doc: "GFF3 feature types to include as transcripts, even if\nno exons are present\
    \ (for GFF3 only; default: use SO\nv2.5.3 specification)"
  type: string[]
  inputBinding:
    prefix: --gff_transcript_types
- id: in_gff_exon_types
  doc: "GFF3 feature types to include as exons (for GFF3 only;\ndefault: use SO v2.5.3\
    \ specification)"
  type: string[]
  inputBinding:
    prefix: --gff_exon_types
- id: in_gff_cds_types
  doc: "GFF3 feature types to include as CDS (for GFF3 only;\ndefault: use SO v2.5.3\
    \ specification)"
  type: string[]
  inputBinding:
    prefix: --gff_cds_types
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
    \ specification)"
  type: string[]
  inputBinding:
    prefix: --mask_gff_cds_types
- id: in_mask_annotation_files
  doc: "[BED | BigBed | GTF2 | GFF3 | PSL] [infile.[BED | BigBed | GTF2 | GFF3 | PSL]\
    \ ...]\nZero or more annotation files (max 1 file if BigBed)"
  type: File?
  inputBinding:
    prefix: --mask_annotation_files
- id: in_mask_annotation_format
  doc: "Format of mask_annotation_files (Default: GTF2). Note:\nGFF3 assembly assumes\
    \ SO v.2.5.2 feature ontologies,\nwhich may or may not match your specific file."
  type: string?
  inputBinding:
    prefix: --mask_annotation_format
- id: in_mask_add_three
  doc: "If supplied, coding regions will be extended by 3\nnucleotides at their 3'\
    \ ends (except for GTF2 files\nthat explicitly include `stop_codon` features).\
    \ Use if\nyour annotation file excludes stop codons from CDS."
  type: boolean?
  inputBinding:
    prefix: --mask_add_three
- id: in_mask_tab_ix
  doc: "mask_annotation_files are tabix-compressed and indexed\n(Default: False).\
    \ Ignored for BigBed files."
  type: boolean?
  inputBinding:
    prefix: --mask_tabix
- id: in_mask_sorted
  doc: "mask_annotation_files are sorted by chromosomal\nposition (Default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --mask_sorted
- id: in_out_base
  doc: Basename for output files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- metagene
- generate

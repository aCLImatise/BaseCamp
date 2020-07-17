class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metagene_generate.cwl
inputs:
- id: landmark
  doc: 'Landmark around which to build metagene profile (Default: cds_start)'
  type: string
  inputBinding:
    prefix: --landmark
- id: upstream
  doc: 'Nucleotides to include upstream of landmark (Default: 50)'
  type: string
  inputBinding:
    prefix: --upstream
- id: downstream
  doc: 'Nucleotides to include downstream of landmark (Default: 50)'
  type: string
  inputBinding:
    prefix: --downstream
- id: group_by
  doc: "Attribute (e.g. in GTF2/GFF3 column 9) by which to group regions before generating\
    \ maximal spanning windows (Default: group transcripts by gene using 'gene_id'\
    \ attribute from GTF2, or 'Parent' attribute in GFF3)"
  type: string
  inputBinding:
    prefix: --group_by
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
- id: annotation_format
  doc: 'Format of annotation_files (Default: GTF2). Note: GFF3 assembly assumes SO
    v.2.5.2 feature ontologies, which may or may not match your specific file.'
  type: string
  inputBinding:
    prefix: --annotation_format
- id: add_three
  doc: If supplied, coding regions will be extended by 3 nucleotides at their 3' ends
    (except for GTF2 files that explicitly include `stop_codon` features). Use if
    your annotation file excludes stop codons from CDS.
  type: boolean
  inputBinding:
    prefix: --add_three
- id: tab_ix
  doc: 'annotation_files are tabix-compressed and indexed (Default: False). Ignored
    for BigBed files.'
  type: boolean
  inputBinding:
    prefix: --tabix
- id: sorted
  doc: 'annotation_files are sorted by chromosomal position (Default: False)'
  type: boolean
  inputBinding:
    prefix: --sorted
- id: bed_extra_columns
  doc: 'Number of extra columns in BED file (e.g. in custom ENCODE formats) or list
    of names for those columns. (Default: 0).'
  type: string[]
  inputBinding:
    prefix: --bed_extra_columns
- id: mask_bed_extra_columns
  doc: 'Number of extra columns in BED file (e.g. in custom ENCODE formats) or list
    of names for those columns. (Default: 0).'
  type: string[]
  inputBinding:
    prefix: --mask_bed_extra_columns
- id: maxmem
  doc: 'Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May
    be exceeded by large queries. (Default: 0, No maximum)'
  type: long
  inputBinding:
    prefix: --maxmem
- id: mask_maxmem
  doc: 'Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May
    be exceeded by large queries. (Default: 0, No maximum)'
  type: string
  inputBinding:
    prefix: --mask_maxmem
- id: gff_transcript_types
  doc: 'GFF3 feature types to include as transcripts, even if no exons are present
    (for GFF3 only; default: use SO v2.5.3 specification)'
  type: string[]
  inputBinding:
    prefix: --gff_transcript_types
- id: gff_exon_types
  doc: 'GFF3 feature types to include as exons (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --gff_exon_types
- id: gff_cds_types
  doc: 'GFF3 feature types to include as CDS (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --gff_cds_types
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
- id: out_base
  doc: Basename for output files
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- metagene
- generate

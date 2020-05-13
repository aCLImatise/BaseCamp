class: CommandLineTool
id: polymut.py.cwl
inputs:
- id: bam_file
  doc: The file on which to operate
  type: string
  inputBinding:
    position: 0
- id: c
  doc: ID, --contig REFERENCE ID Focus on a subset of references in the BAM file.
    Can be a list of references separated by commas or a FASTA file (the IDs are used
    to subset)
  type: string
  inputBinding:
    prefix: -c
- id: f
  doc: 'If set unmapped (FUNMAP), secondary (FSECONDARY), qc- fail (FQCFAIL) and duplicate
    (FDUP) are excluded. If unset ALL reads are considered (bedtools genomecov style).
    Default: unset'
  type: boolean
  inputBinding:
    prefix: -f
- id: sort_index
  doc: Sort and index the file
  type: boolean
  inputBinding:
    prefix: --sortindex
- id: min_len
  doc: 'Minimum Reference Length for a reference to be considered. Default: 0'
  type: long
  inputBinding:
    prefix: --minlen
- id: min_qual
  doc: 'Minimum base quality. Bases with quality score lower than this will be discarded.
    This is performed BEFORE --mincov. Default: 30'
  type: long
  inputBinding:
    prefix: --minqual
- id: min_cov
  doc: Minimum position coverage to perform the polymorphism calculation. Position
    with a lower depth of coverage will be discarded (i.e. considered as zero-coverage
    positions). This is calculated AFTER --minqual. Default:1
  type: long
  inputBinding:
    prefix: --mincov
- id: dominant_frq_thr_sh
  doc: 'Cutoff for degree of `allele dominance` for a position to be considered polymorphic.
    Default: 0.8'
  type: string
  inputBinding:
    prefix: --dominant_frq_thrsh
- id: gff_file
  doc: GFF file used to extract protein-coding genes
  type: string
  inputBinding:
    prefix: --gff_file
outputs: []
cwlVersion: v1.1
baseCommand:
- polymut.py

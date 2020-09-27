class: CommandLineTool
id: consensus.py.cwl
inputs:
- id: in_id__contig
  doc: "ID, --contig REFERENCE ID\nFocus on a subset of references in the BAM file.\
    \ Can\nbe a list of references separated by commas or a FASTA\nfile (the IDs are\
    \ used to subset)"
  type: File
  inputBinding:
    prefix: -c
- id: in_set_unmapped_fsecondary
  doc: "If set unmapped (FUNMAP), secondary (FSECONDARY), qc-\nfail (FQCFAIL) and\
    \ duplicate (FDUP) are excluded. If\nunset ALL reads are considered (bedtools\
    \ genomecov\nstyle). Default: unset"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_sort_index
  doc: Sort and index the file
  type: boolean
  inputBinding:
    prefix: --sortindex
- id: in_min_qual
  doc: "Minimum base quality. Bases with quality score lower\nthan this will be discarded.\
    \ This is performed BEFORE\n--mincov. Default: 30"
  type: long
  inputBinding:
    prefix: --minqual
- id: in_min_cov
  doc: "Minimum position coverage to perform the polymorphism\ncalculation. Position\
    \ with a lower depth of coverage\nwill be discarded (i.e. considered as zero-coverage\n\
    positions). This is calculated AFTER --minqual.\nDefault: 0"
  type: long
  inputBinding:
    prefix: --mincov
- id: in_dominant_frq_thr_sh
  doc: "Cutoff for degree of `allele dominance` for a position\nto be considered polymorphic.\
    \ Default: 0.8"
  type: double
  inputBinding:
    prefix: --dominant_frq_thrsh
- id: in_min_len
  doc: "Minimum Reference Length for a reference to be\nconsidered. Default: 0"
  type: long
  inputBinding:
    prefix: --minlen
- id: in_trim
  doc: "Trim the reads before computing the consensus. A value\nof 10:10 means that\
    \ the first and last 10 positions of\neach read will be ignored. Default: None\n"
  type: long
  inputBinding:
    prefix: --trim
- id: in_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- consensus.py

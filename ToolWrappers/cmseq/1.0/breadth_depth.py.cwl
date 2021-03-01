class: CommandLineTool
id: breadth_depth.py.cwl
inputs:
- id: in_id_contig_idfocus
  doc: "ID, --contig REFERENCE ID\nFocus on a subset of references in the BAM file.\
    \ Can\nbe a list of references separated by commas or a FASTA\nfile (the IDs are\
    \ used to subset)"
  type: File?
  inputBinding:
    prefix: -c
- id: in_set_unmapped_fqcfail
  doc: "If set unmapped (FUNMAP), secondary (FSECONDARY), qc-\nfail (FQCFAIL) and\
    \ duplicate (FDUP) are excluded. If\nunset ALL reads are considered (bedtools\
    \ genomecov\nstyle). Default: unset"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_sort_index
  doc: Sort and index the file
  type: boolean?
  inputBinding:
    prefix: --sortindex
- id: in_min_len
  doc: Minimum Reference Length for a reference to be
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_min_cov
  doc: "Minimum position coverage to perform the polymorphism\ncalculation. Position\
    \ with a lower depth of coverage\nwill be discarded (i.e. considered as zero-coverage\n\
    positions). This is calculated AFTER --minqual.\nDefault: 1"
  type: long?
  inputBinding:
    prefix: --mincov
- id: in_truncate
  doc: "Number of nucleotides that are truncated at either\ncontigs end before calculating\
    \ coverage values.\n"
  type: long?
  inputBinding:
    prefix: --truncate
- id: in_considered
  doc: --minqual MINQUAL     Minimum base quality. Bases with quality score lower
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
- breadth_depth.py

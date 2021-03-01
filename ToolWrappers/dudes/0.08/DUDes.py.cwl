class: CommandLineTool
id: DUDes.py.cwl
inputs:
- id: in_alignmentmapping_file_sam
  doc: "Alignment/mapping file in SAM format. DUDes does not\ndepend on any specific\
    \ read mapper, but it requires\nheader information (@SQ\nSN:gi|556555098|ref|NC_022650.1|\
    \ LN:55956) and\nmismatch information (check -i)"
  type: File?
  inputBinding:
    prefix: -s
- id: in_database_file_output
  doc: Database file (output from DUDesDB [.npz])
  type: File?
  inputBinding:
    prefix: -d
- id: in_sam_file_format
  doc: "SAM file format ['nm': sam file with standard cigar\nstring plus NM flag (NM:i:[0-9]*)\
    \ for mismatches count\n| 'ex': just the extended cigar string]. Default: 'nm'"
  type: File?
  inputBinding:
    prefix: -i
- id: in__threads_default
  doc: '# of threads. Default: 1'
  type: long?
  inputBinding:
    prefix: -t
- id: in_taxonomic_i_d
  doc: "Taxonomic Id used to start the analysis (1 = root).\nDefault: 1"
  type: long?
  inputBinding:
    prefix: -x
- id: in_keep_reads_percentile
  doc: "Keep reads up to this number/percentile of matches (0:\noff / 0-1: percentile\
    \ / >=1: match count). Default: 0"
  type: long?
  inputBinding:
    prefix: -m
- id: in_minimum_numberpercentage_supporting
  doc: "Minimum number/percentage of supporting matches to\nconsider the reference\
    \ (0: off / 0-1: percentage /\n>=1: read number). Default: 0.001"
  type: long?
  inputBinding:
    prefix: -a
- id: in_last_considered_rank
  doc: "Last considered rank [superkingdom,phylum,class,order,\nfamily,genus,species,strain].\
    \ Default: 'species'"
  type: string?
  inputBinding:
    prefix: -l
- id: in_bin_size_percentile
  doc: "Bin size (0-1: percentile from the lengths of all\nreferences in the database\
    \ / >=1: bp). Default: 0.25"
  type: long?
  inputBinding:
    prefix: -b
- id: in_output_prefix_stdout
  doc: 'Output prefix. Default: STDOUT'
  type: string?
  inputBinding:
    prefix: -o
- id: in_show_programs_number
  doc: show program's version number and exit
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_database_file_output
  doc: Database file (output from DUDesDB [.npz])
  type: File?
  outputBinding:
    glob: $(inputs.in_database_file_output)
hints: []
cwlVersion: v1.1
baseCommand:
- DUDes.py

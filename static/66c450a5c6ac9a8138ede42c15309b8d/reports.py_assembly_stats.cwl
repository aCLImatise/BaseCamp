class: CommandLineTool
id: reports.py_assembly_stats.cwl
inputs:
- id: in_cov_thresholds
  doc: "Genome coverage thresholds to report on. (default: (1,\n5, 20, 100))"
  type: string[]
  inputBinding:
    prefix: --cov_thresholds
- id: in_assembly_dir
  doc: "Directory with assembly outputs. (default:\ndata/02_assembly)"
  type: Directory
  inputBinding:
    prefix: --assembly_dir
- id: in_assembly_tmp
  doc: "Directory with assembly temp files. (default:\ntmp/02_assembly)"
  type: Directory
  inputBinding:
    prefix: --assembly_tmp
- id: in_align_dir
  doc: "Directory with reads aligned to own assembly.\n(default: data/02_align_to_self)"
  type: Directory
  inputBinding:
    prefix: --align_dir
- id: in_reads_dir
  doc: "Directory with unaligned filtered read BAMs. (default:\ndata/01_per_sample)"
  type: Directory
  inputBinding:
    prefix: --reads_dir
- id: in_raw_reads_dir
  doc: "Directory with unaligned raw read BAMs. (default:\ndata/00_raw)\n"
  type: Directory
  inputBinding:
    prefix: --raw_reads_dir
- id: in_samples
  doc: Sample names.
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: Output report file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- reports.py
- assembly_stats

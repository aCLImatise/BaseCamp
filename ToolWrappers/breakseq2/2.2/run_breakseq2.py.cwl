class: CommandLineTool
id: run_breakseq2.py.cwl
inputs:
- id: in_n_threads
  doc: "Number of processes to use for parallelism (default:\n1)"
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_bams
  doc: 'Alignment BAMs (default: [])'
  type: string[]
  inputBinding:
    prefix: --bams
- id: in_work
  doc: 'Working directory (default: work)'
  type: Directory?
  inputBinding:
    prefix: --work
- id: in_chromosomes
  doc: 'List of chromosomes to process (default: [])'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_reference
  doc: 'Reference FASTA (default: None)'
  type: string?
  inputBinding:
    prefix: --reference
- id: in_sample
  doc: "Sample name. Leave unspecified to infer sample name\nfrom BAMs. (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --sample
- id: in_keep_temp
  doc: 'Keep temporary files (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_temp
- id: in_bp_lib
  doc: 'Breakpoint library FASTA (default: None)'
  type: string?
  inputBinding:
    prefix: --bplib
- id: in_bwa
  doc: 'Path to BWA executable (default: None)'
  type: File?
  inputBinding:
    prefix: --bwa
- id: in_sam_tools
  doc: 'Path to SAMtools executable (default: None)'
  type: File?
  inputBinding:
    prefix: --samtools
- id: in_min_span
  doc: 'Minimum span for junction (default: 10)'
  type: long?
  inputBinding:
    prefix: --min_span
- id: in_window
  doc: 'Window size (default: 100)'
  type: long?
  inputBinding:
    prefix: --window
- id: in_min_overlap
  doc: 'Min overlap (default: 10)'
  type: long?
  inputBinding:
    prefix: --min_overlap
- id: in_bp_lib_gff
  doc: 'Breakpoint GFF input (default: None)'
  type: string?
  inputBinding:
    prefix: --bplib_gff
- id: in_junction_length
  doc: 'Junction length (default: 200)'
  type: long?
  inputBinding:
    prefix: --junction_length
- id: in_format_version
  doc: "Version of breakpoint library format to use (default:\n2)\n"
  type: string?
  inputBinding:
    prefix: --format_version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_breakseq2.py

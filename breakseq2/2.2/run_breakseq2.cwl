class: CommandLineTool
id: run_breakseq2.py.cwl
inputs:
- id: n_threads
  doc: 'Number of processes to use for parallelism (default: 1)'
  type: string
  inputBinding:
    prefix: --nthreads
- id: bams
  doc: 'Alignment BAMs (default: [])'
  type: string[]
  inputBinding:
    prefix: --bams
- id: work
  doc: 'Working directory (default: work)'
  type: string
  inputBinding:
    prefix: --work
- id: chromosomes
  doc: 'List of chromosomes to process (default: [])'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: reference
  doc: 'Reference FASTA (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: sample
  doc: 'Sample name. Leave unspecified to infer sample name from BAMs. (default: None)'
  type: string
  inputBinding:
    prefix: --sample
- id: keep_temp
  doc: 'Keep temporary files (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_temp
- id: bp_lib
  doc: 'Breakpoint library FASTA (default: None)'
  type: string
  inputBinding:
    prefix: --bplib
- id: bwa
  doc: 'Path to BWA executable (default: None)'
  type: string
  inputBinding:
    prefix: --bwa
- id: sam_tools
  doc: 'Path to SAMtools executable (default: None)'
  type: string
  inputBinding:
    prefix: --samtools
- id: min_span
  doc: 'Minimum span for junction (default: 10)'
  type: long
  inputBinding:
    prefix: --min_span
- id: window
  doc: 'Window size (default: 100)'
  type: string
  inputBinding:
    prefix: --window
- id: min_overlap
  doc: 'Min overlap (default: 10)'
  type: long
  inputBinding:
    prefix: --min_overlap
- id: bp_lib_gff
  doc: 'Breakpoint GFF input (default: None)'
  type: string
  inputBinding:
    prefix: --bplib_gff
- id: junction_length
  doc: 'Junction length (default: 200)'
  type: string
  inputBinding:
    prefix: --junction_length
- id: format_version
  doc: '{1,2} Version of breakpoint library format to use (default: 2)'
  type: boolean
  inputBinding:
    prefix: --format_version
outputs: []
cwlVersion: v1.1
baseCommand:
- run_breakseq2.py

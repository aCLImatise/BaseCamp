class: CommandLineTool
id: coconet_preprocess.cwl
inputs:
- id: in_fast_a
  doc: "Path to your assembly file (fasta formatted) (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_h_five
  doc: "Experimental: coverage in hdf5 format (keys are\ncontigs, values are (sample,\
    \ contig_len) ndarrays\n(default: None)"
  type: long?
  inputBinding:
    prefix: --h5
- id: in_output
  doc: 'Path to output directory (default: output)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: 'Number of threads (default: 5)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_debug
  doc: 'Print debugging statements (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Less verbose (default: None)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_silent
  doc: 'Only error messages (default: None)'
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_continue
  doc: "Start from last checkpoint. The output directory needs\nto be the same. (default:\
    \ False)"
  type: Directory?
  inputBinding:
    prefix: --continue
- id: in_bam
  doc: "List of paths to your coverage files (bam formatted)\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --bam
- id: in_min_ctg_len
  doc: 'Minimum contig length (default: 2048)'
  type: long?
  inputBinding:
    prefix: --min-ctg-len
- id: in_min_prevalence
  doc: "Minimum contig prevalence for binning. Contig with\nless that value are filtered\
    \ out. (default: 2)"
  type: long?
  inputBinding:
    prefix: --min-prevalence
- id: in_min_mapping_quality
  doc: 'Minimum alignment quality (default: 30)'
  type: long?
  inputBinding:
    prefix: --min-mapping-quality
- id: in_min_aln_coverage
  doc: "Discard alignments with less than 50% aligned\nnucleotides"
  type: long?
  inputBinding:
    prefix: --min-aln-coverage
- id: in_flag
  doc: "SAM flag for filtering (same as samtools \"-F\" option)\n(default: 3596)"
  type: long?
  inputBinding:
    prefix: --flag
- id: in_tlen_range
  doc: "TLEN_RANGE\nOnly allow for paired alignments with spacing within\nthis range\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --tlen-range
- id: in_min_dtr_size
  doc: "Minimum size of DTR to flag complete contigs (default:\n10)\n"
  type: long?
  inputBinding:
    prefix: --min-dtr-size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Path to output directory (default: output)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_continue
  doc: "Start from last checkpoint. The output directory needs\nto be the same. (default:\
    \ False)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_continue)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coconet-binning:1.1.0--py_0
cwlVersion: v1.1
baseCommand:
- coconet
- preprocess

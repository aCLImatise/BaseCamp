class: CommandLineTool
id: cobs_compact_construct.cwl
inputs:
- id: in_clobber
  doc: erase output directory if it exists
  type: Directory?
  inputBinding:
    prefix: --clobber
- id: in_continue
  doc: continue in existing output directory
  type: Directory?
  inputBinding:
    prefix: --continue
- id: in_false_positive_rate
  doc: 'false positive rate, default: 0.300000'
  type: boolean?
  inputBinding:
    prefix: --false-positive-rate
- id: in_file_type
  doc: "\"list\" to read a file list, or filter documents by\nfile type (any, text,\
    \ cortex, fasta, fastq, etc)"
  type: boolean?
  inputBinding:
    prefix: --file-type
- id: in_keep_temporary
  doc: keep temporary files during construction
  type: boolean?
  inputBinding:
    prefix: --keep-temporary
- id: in_memory
  doc: 'memory in bytes to use, default: 5.433 Gi'
  type: boolean?
  inputBinding:
    prefix: --memory
- id: in_no_canonicalize
  doc: "don't canonicalize DNA k-mers, default: false"
  type: boolean?
  inputBinding:
    prefix: --no-canonicalize
- id: in_page_size
  doc: "the page size of the compact the index, default:\nsqrt(#documents)"
  type: boolean?
  inputBinding:
    prefix: --page-size
- id: in_term_size
  doc: 'term size (k-mer size), default: 31'
  type: boolean?
  inputBinding:
    prefix: --term-size
- id: in_threads
  doc: 'number of threads to use, default: max cores'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_tmp_path
  doc: "directory for intermediate index files, default:\nout_file + \".tmp\")\n"
  type: boolean?
  inputBinding:
    prefix: --tmp-path
- id: in_input
  doc: path to the input directory or file
  type: string
  inputBinding:
    position: 0
- id: in_out_file
  doc: path to the output .cobs_compact index file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_clobber
  doc: erase output directory if it exists
  type: Directory?
  outputBinding:
    glob: $(inputs.in_clobber)
- id: out_continue
  doc: continue in existing output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_continue)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0
cwlVersion: v1.1
baseCommand:
- cobs
- compact-construct

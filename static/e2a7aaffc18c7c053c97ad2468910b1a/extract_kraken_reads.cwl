class: CommandLineTool
id: extract_kraken_reads.py.cwl
inputs:
- id: s2
  doc: ', -2 SEQ_FILE2 2nd FASTA/FASTQ File containing the raw sequence letters (paired).'
  type: string
  inputBinding:
    prefix: -s2
- id: taxid
  doc: Taxonomy ID[s] of reads to extract (space-delimited)
  type: string[]
  inputBinding:
    prefix: --taxid
- id: output
  doc: Output FASTA/Q file containing the reads and sample IDs
  type: string
  inputBinding:
    prefix: --output
- id: output_2
  doc: Output FASTA/Q file containig the second pair of reads [required for paired
    input]
  type: string
  inputBinding:
    prefix: --output2
- id: append
  doc: Append the sequences to the end of the output FASTA file specified.
  type: boolean
  inputBinding:
    prefix: --append
- id: no_append
  doc: Create a new FASTA file containing sample sequences and IDs (rewrite if existing)
    [default].
  type: boolean
  inputBinding:
    prefix: --noappend
- id: max
  doc: 'Maximum number of reads to save [default: 100,000,000]'
  type: long
  inputBinding:
    prefix: --max
- id: report
  doc: Kraken report file. [required only if --include- parents/children is specified]
  type: string
  inputBinding:
    prefix: --report
- id: include_parents
  doc: Include reads classified at parent levels of the specified taxids
  type: boolean
  inputBinding:
    prefix: --include-parents
- id: include_children
  doc: Include reads classified more specifically than the specified taxids
  type: boolean
  inputBinding:
    prefix: --include-children
- id: exclude
  doc: Instead of finding reads matching specified taxids, finds all reads NOT matching
    specified taxids
  type: boolean
  inputBinding:
    prefix: --exclude
- id: fast_q_output
  doc: 'Print output FASTQ reads [requires input FASTQ, default: output is FASTA]'
  type: boolean
  inputBinding:
    prefix: --fastq-output
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_kraken_reads.py

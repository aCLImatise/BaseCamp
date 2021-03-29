class: CommandLineTool
id: extract_kraken_reads.py.cwl
inputs:
- id: in_kraken_output_file
  doc: Kraken output file to parse
  type: File?
  inputBinding:
    prefix: -k
- id: in_s_one
  doc: FASTA/FASTQ File containing the raw sequence letters.
  type: long?
  inputBinding:
    prefix: -s1
- id: in_s_two
  doc: "2nd FASTA/FASTQ File containing the raw sequence\nletters (paired)."
  type: long?
  inputBinding:
    prefix: -s2
- id: in_taxid
  doc: Taxonomy ID[s] of reads to extract (space-delimited)
  type: string[]
  inputBinding:
    prefix: --taxid
- id: in_output
  doc: "Output FASTA/Q file containing the reads and sample\nIDs"
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_two
  doc: "Output FASTA/Q file containig the second pair of reads\n[required for paired\
    \ input]"
  type: File?
  inputBinding:
    prefix: --output2
- id: in_append
  doc: "Append the sequences to the end of the output FASTA\nfile specified."
  type: File?
  inputBinding:
    prefix: --append
- id: in_no_append
  doc: "Create a new FASTA file containing sample sequences\nand IDs (rewrite if existing)\
    \ [default]."
  type: boolean?
  inputBinding:
    prefix: --noappend
- id: in_max
  doc: 'Maximum number of reads to save [default: 100,000,000]'
  type: long?
  inputBinding:
    prefix: --max
- id: in_report
  doc: "Kraken report file. [required only if --include-\nparents/children is specified]"
  type: File?
  inputBinding:
    prefix: --report
- id: in_include_parents
  doc: "Include reads classified at parent levels of the\nspecified taxids"
  type: boolean?
  inputBinding:
    prefix: --include-parents
- id: in_include_children
  doc: "Include reads classified more specifically than the\nspecified taxids"
  type: boolean?
  inputBinding:
    prefix: --include-children
- id: in_exclude
  doc: "Instead of finding reads matching specified taxids,\nfinds all reads NOT matching\
    \ specified taxids"
  type: boolean?
  inputBinding:
    prefix: --exclude
- id: in_fast_q_output
  doc: "Print output FASTQ reads [requires input FASTQ,\ndefault: output is FASTA]\n"
  type: boolean?
  inputBinding:
    prefix: --fastq-output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_kraken_output_file
  doc: Kraken output file to parse
  type: File?
  outputBinding:
    glob: $(inputs.in_kraken_output_file)
- id: out_output
  doc: "Output FASTA/Q file containing the reads and sample\nIDs"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_two
  doc: "Output FASTA/Q file containig the second pair of reads\n[required for paired\
    \ input]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_two)
- id: out_append
  doc: "Append the sequences to the end of the output FASTA\nfile specified."
  type: File?
  outputBinding:
    glob: $(inputs.in_append)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- extract_kraken_reads.py

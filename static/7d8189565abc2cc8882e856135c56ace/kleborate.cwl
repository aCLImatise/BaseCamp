class: CommandLineTool
id: kleborate.cwl
inputs:
- id: assemblies
  doc: FASTA file(s) for assemblies
  type: string[]
  inputBinding:
    prefix: --assemblies
- id: resistance
  doc: 'Turn on resistance genes screening (default: no resistance gene screening)'
  type: boolean
  inputBinding:
    prefix: --resistance
- id: kap_tive_k
  doc: 'Turn on Kaptive screening of K loci (default: do not run Kaptive for K loci)'
  type: boolean
  inputBinding:
    prefix: --kaptive_k
- id: kap_tive_o
  doc: 'Turn on Kaptive screening of O loci (default: do not run Kaptive for O loci)'
  type: boolean
  inputBinding:
    prefix: --kaptive_o
- id: kap_tive
  doc: Equivalent to --kaptive_k --kaptive_o
  type: boolean
  inputBinding:
    prefix: --kaptive
- id: all
  doc: Equivalent to --resistance --kaptive
  type: boolean
  inputBinding:
    prefix: --all
- id: outfile
  doc: 'File for detailed output (default: Kleborate_results.txt)'
  type: string
  inputBinding:
    prefix: --outfile
- id: kap_tive_k_outfile
  doc: 'File for full Kaptive K locus output (default: do not save Kaptive K locus
    results to separate file)'
  type: string
  inputBinding:
    prefix: --kaptive_k_outfile
- id: kap_tive_o_outfile
  doc: 'File for full Kaptive O locus output (default: do not save Kaptive O locus
    results to separate file)'
  type: string
  inputBinding:
    prefix: --kaptive_o_outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- kleborate

class: CommandLineTool
id: ../../../kleborate.cwl
inputs:
- id: in_assemblies
  doc: FASTA file(s) for assemblies
  type: string[]
  inputBinding:
    prefix: --assemblies
- id: in_resistance
  doc: "Turn on resistance genes screening (default: no\nresistance gene screening)"
  type: boolean
  inputBinding:
    prefix: --resistance
- id: in_kap_tive_k
  doc: "Turn on Kaptive screening of K loci (default: do not\nrun Kaptive for K loci)"
  type: boolean
  inputBinding:
    prefix: --kaptive_k
- id: in_kap_tive_o
  doc: "Turn on Kaptive screening of O loci (default: do not\nrun Kaptive for O loci)"
  type: boolean
  inputBinding:
    prefix: --kaptive_o
- id: in_kap_tive
  doc: Equivalent to --kaptive_k --kaptive_o
  type: boolean
  inputBinding:
    prefix: --kaptive
- id: in_all
  doc: Equivalent to --resistance --kaptive
  type: boolean
  inputBinding:
    prefix: --all
- id: in_outfile
  doc: "File for detailed output (default:\nKleborate_results.txt)"
  type: File
  inputBinding:
    prefix: --outfile
- id: in_kap_tive_k_outfile
  doc: "File for full Kaptive K locus output (default: do not\nsave Kaptive K locus\
    \ results to separate file)"
  type: File
  inputBinding:
    prefix: --kaptive_k_outfile
- id: in_kap_tive_o_outfile
  doc: "File for full Kaptive O locus output (default: do not\nsave Kaptive O locus\
    \ results to separate file)"
  type: File
  inputBinding:
    prefix: --kaptive_o_outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "File for detailed output (default:\nKleborate_results.txt)"
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_kap_tive_k_outfile
  doc: "File for full Kaptive K locus output (default: do not\nsave Kaptive K locus\
    \ results to separate file)"
  type: File
  outputBinding:
    glob: $(inputs.in_kap_tive_k_outfile)
- id: out_kap_tive_o_outfile
  doc: "File for full Kaptive O locus output (default: do not\nsave Kaptive O locus\
    \ results to separate file)"
  type: File
  outputBinding:
    glob: $(inputs.in_kap_tive_o_outfile)
cwlVersion: v1.1
baseCommand:
- kleborate

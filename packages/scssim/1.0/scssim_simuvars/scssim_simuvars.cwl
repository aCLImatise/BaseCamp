class: CommandLineTool
id: scssim_simuvars.cwl
inputs:
- id: in_ref
  doc: reference file (.fasta)
  type: File
  inputBinding:
    prefix: --ref
- id: in_snp
  doc: SNP file containing the SNPs to be simulated [Default:null]
  type: File
  inputBinding:
    prefix: --snp
- id: in_var
  doc: variation file containing the genomic variations to be simulated [Default:null]
  type: File
  inputBinding:
    prefix: --var
- id: in_output
  doc: output file (.fasta) to save generated sequences
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file (.fasta) to save generated sequences
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- scssim
- simuvars

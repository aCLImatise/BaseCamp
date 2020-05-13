class: CommandLineTool
id: vawk_cmd.cwl
inputs:
- id: cmd
  doc: "vawk command syntax is exactly the same as awk syntax with a few additional\
    \ features. The INFO field can be split using the I$ prefix and the SAMPLE field\
    \ can be split using the S$ prefix. For example, I$AF prints the allele frequency\
    \ of each variant and S$NA12878 prints the entire SAMPLE field for the NA12878\
    \ individual for each variant. S$* returns all samples. The SAMPLE field can be\
    \ further split based on the keys in the FORMAT field of the VCF (column 9). For\
    \ example, S$NA12877$GT returns the genotype of the NA12878 individual. ex: '{\
    \ if (I$AF>0.5) print $1,$2,$3,I$AN,S$NA12878,S$NA12877$GT }'"
  type: string
  inputBinding:
    position: 0
- id: vcf
  doc: 'VCF file (default: stdin)'
  type: string
  inputBinding:
    position: 1
- id: var
  doc: 'declare an external variable (e.g.: SIZE=10000)'
  type: string
  inputBinding:
    prefix: --var
- id: col
  doc: column of the INFO field [8]
  type: string
  inputBinding:
    prefix: --col
- id: header
  doc: print VCF header
  type: boolean
  inputBinding:
    prefix: --header
- id: debug
  doc: debugging level verbosity
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- vawk
- cmd

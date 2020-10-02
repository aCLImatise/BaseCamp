class: CommandLineTool
id: alfred_split.cwl
inputs:
- id: in_arg_min_quality
  doc: '[ --map-qual ] arg (=10)     min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg          reference fasta file'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_p
  doc: '[ --hap1 ] arg (="h1.bam")   haplotype1 output file'
  type: File
  inputBinding:
    prefix: -p
- id: in_q
  doc: '[ --hap2 ] arg (="h2.bam")   haplotype2 output file'
  type: File
  inputBinding:
    prefix: -q
- id: in_arg_na_sample
  doc: '[ --sample ] arg (=NA12878)  sample name (as in BCF)'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_input_phased
  doc: '[ --vcffile ] arg            input phased VCF/BCF file'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_assign_unphased_reads
  doc: '[ --assign ]                 assign unphased reads randomly'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_single_haplotypetagged_bam
  doc: '[ --interleaved ]            single haplotype-tagged BAM'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_un_phased_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_p
  doc: '[ --hap1 ] arg (="h1.bam")   haplotype1 output file'
  type: File
  outputBinding:
    glob: $(inputs.in_p)
- id: out_q
  doc: '[ --hap2 ] arg (="h2.bam")   haplotype2 output file'
  type: File
  outputBinding:
    glob: $(inputs.in_q)
cwlVersion: v1.1
baseCommand:
- alfred
- split

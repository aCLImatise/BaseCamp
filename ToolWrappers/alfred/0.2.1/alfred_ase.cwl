class: CommandLineTool
id: alfred_ase.cwl
inputs:
- id: in_arg_min_mapping_quality
  doc: '[ --map-qual ] arg (=10)      min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_min_base_quality
  doc: '[ --base-qual ] arg (=10)     min. base quality'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg           reference fasta file'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_na_sample
  doc: '[ --sample ] arg (=NA12878)   sample name'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_allelespecific_file
  doc: '[ --ase ] arg (="as.tsv.gz")  allele-specific output file'
  type: File
  inputBinding:
    prefix: -a
- id: in_arg_input_phased
  doc: '[ --vcffile ] arg             input (phased) BCF file'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_bcf_file_phased
  doc: '[ --phased ]                  BCF file is phased and BAM is haplo-tagged'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_output_het_input
  doc: '[ --full ]                    output all het. input SNPs'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_allelespecific_file
  doc: '[ --ase ] arg (="as.tsv.gz")  allele-specific output file'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_allelespecific_file)
cwlVersion: v1.1
baseCommand:
- alfred
- ase

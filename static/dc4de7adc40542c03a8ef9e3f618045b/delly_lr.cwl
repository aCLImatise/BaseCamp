class: CommandLineTool
id: delly_lr.cwl
inputs:
- id: in_arg_sv_type
  doc: "[ --svtype ] arg (=ALL)        SV type to compute [DEL, INS, DUP, INV,\nBND,\
    \ ALL]"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_y
  doc: '[ --technology ] arg (=ont)    seq. technology [pb, ont]'
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_arg_genome_fasta
  doc: '[ --genome ] arg               genome fasta file'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_arg_file_regions
  doc: '[ --exclude ] arg              file with regions to exclude'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_arg_sv_bcf
  doc: '[ --outfile ] arg (="sv.bcf")  SV BCF output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in__arg_min_mapping_quality
  doc: '[ --mapqual ] arg (=10)        min. mapping quality'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_arg_min_clipping
  doc: '[ --minclip ] arg (=25)        min. clipping length'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_min_reference
  doc: '[ --minrefsep ] arg (=30)      min. reference separation'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_max_read
  doc: '[ --maxreadsep ] arg (=75)     max. read separation'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_input_vcfbcf
  doc: '[ --vcffile ] arg              input VCF/BCF file for genotyping'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_min_mapping_quality_genotyping
  doc: '[ --geno-qual ] arg (=5)       min. mapping quality for genotyping'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_gzipped_output
  doc: '[ --dump ] arg                 gzipped output file for SV-reads'
  type: File?
  inputBinding:
    prefix: -d
- id: in_generic
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_sv_bcf
  doc: '[ --outfile ] arg (="sv.bcf")  SV BCF output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_sv_bcf)
- id: out_arg_gzipped_output
  doc: '[ --dump ] arg                 gzipped output file for SV-reads'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_gzipped_output)
hints: []
cwlVersion: v1.1
baseCommand:
- delly
- lr

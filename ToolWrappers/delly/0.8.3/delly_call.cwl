class: CommandLineTool
id: ../../../delly_call.cwl
inputs:
- id: in_arg_sv_type
  doc: "[ --svtype ] arg (=ALL)        SV type to compute [DEL, INS, DUP, INV,\nBND,\
    \ ALL]"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_arg_genome_fasta
  doc: '[ --genome ] arg               genome fasta file'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_arg_file_regions
  doc: '[ --exclude ] arg              file with regions to exclude'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_arg_sv_file
  doc: '[ --outfile ] arg (="sv.bcf")  SV BCF output file'
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_min_pairedend
  doc: '[ --map-qual ] arg (=1)        min. paired-end (PE) mapping quality'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_arg_min_pe
  doc: '[ --qual-tra ] arg (=20)       min. PE quality for translocation'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_insert_size
  doc: "[ --mad-cutoff ] arg (=9)      insert size cutoff, median+s*MAD (deletions\n\
    only)"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_min_length
  doc: '[ --minclip ] arg (=25)        min. clipping length'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_arg_min_reference
  doc: '[ --minrefsep ] arg (=25)      min. reference separation'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_max_read
  doc: '[ --maxreadsep ] arg (=40)     max. read separation'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_arg_input_file
  doc: '[ --vcffile ] arg              input VCF/BCF file for genotyping'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_arg_min_mapping
  doc: '[ --geno-qual ] arg (=5)       min. mapping quality for genotyping'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_arg_gzipped_file
  doc: '[ --dump ] arg                 gzipped output file for SV-reads (optional)'
  type: File
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
- id: out_arg_sv_file
  doc: '[ --outfile ] arg (="sv.bcf")  SV BCF output file'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_sv_file)
- id: out_arg_gzipped_file
  doc: '[ --dump ] arg                 gzipped output file for SV-reads (optional)'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_gzipped_file)
cwlVersion: v1.1
baseCommand:
- delly
- call

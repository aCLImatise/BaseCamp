class: CommandLineTool
id: ../../../delly_call.cwl
inputs:
- id: t
  doc: '[ --svtype ] arg (=ALL)        SV type to compute [DEL, INS, DUP, INV,  BND,
    ALL]'
  type: boolean
  inputBinding:
    prefix: -t
- id: arg_genome_fasta
  doc: '[ --genome ] arg               genome fasta file'
  type: boolean
  inputBinding:
    prefix: -g
- id: arg_file_regions
  doc: '[ --exclude ] arg              file with regions to exclude'
  type: boolean
  inputBinding:
    prefix: -x
- id: arg_sv_bcf
  doc: '[ --outfile ] arg (="sv.bcf")  SV BCF output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_min_pairedend
  doc: '[ --map-qual ] arg (=1)        min. paired-end (PE) mapping quality'
  type: boolean
  inputBinding:
    prefix: -q
- id: arg_min_pe_quality
  doc: '[ --qual-tra ] arg (=20)       min. PE quality for translocation'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_insert_size
  doc: '[ --mad-cutoff ] arg (=9)      insert size cutoff, median+s*MAD (deletions
    only)'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_min_clipping
  doc: '[ --minclip ] arg (=25)        min. clipping length'
  type: boolean
  inputBinding:
    prefix: -c
- id: arg_min_separation
  doc: '[ --minrefsep ] arg (=25)      min. reference separation'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_max_read
  doc: '[ --maxreadsep ] arg (=40)     max. read separation'
  type: boolean
  inputBinding:
    prefix: -n
- id: arg_input_vcfbcf
  doc: '[ --vcffile ] arg              input VCF/BCF file for genotyping'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_min_mapping_quality
  doc: '[ --geno-qual ] arg (=5)       min. mapping quality for genotyping'
  type: boolean
  inputBinding:
    prefix: -u
- id: arg_gzipped_file
  doc: '[ --dump ] arg                 gzipped output file for SV-reads (optional)'
  type: boolean
  inputBinding:
    prefix: -d
- id: generic
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- delly
- call

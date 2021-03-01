class: CommandLineTool
id: delly_lr.cwl
inputs:
- id: in_arg_sv_type
  doc: "[ --svtype ] arg (=ALL)            SV type to compute [DEL, INS, DUP, INV,\n\
    BND, ALL]"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_y
  doc: '[ --technology ] arg (=ont)        seq. technology [pb, ont]'
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_arg_genome_fasta
  doc: '[ --genome ] arg                   genome fasta file'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_arg_file_exclude
  doc: '[ --exclude ] arg                  file with regions to exclude'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_arg_sv_bcf
  doc: '[ --outfile ] arg (="sv.bcf")      SV BCF output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in__arg_min_mapping_quality
  doc: '[ --mapqual ] arg (=10)            min. mapping quality'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_arg_min_clipping
  doc: '[ --minclip ] arg (=25)            min. clipping length'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_min_clique
  doc: '[ --min-clique-size ] arg (=2)     min. clique size'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_arg_min_reference
  doc: '[ --minrefsep ] arg (=30)          min. reference separation'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_max_read
  doc: '[ --maxreadsep ] arg (=75)         max. read separation'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_max_reads
  doc: '[ --max-reads ] arg (=5)           max. reads for consensus computation'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_min_size
  doc: '[ --flank-size ] arg (=400)        min. flank size'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_flank_quality
  doc: "[ --flank-quality ] arg (=0.899999976)\nmin. flank quality"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_min_mapping_quality_genotyping
  doc: '[ --geno-qual ] arg (=5)           min. mapping quality for genotyping'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_gzipped_file
  doc: '[ --dump ] arg                     gzipped output file for SV-reads'
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
  doc: '[ --outfile ] arg (="sv.bcf")      SV BCF output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_sv_bcf)
- id: out_arg_gzipped_file
  doc: '[ --dump ] arg                     gzipped output file for SV-reads'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_gzipped_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/delly:0.8.7--hf3ca161_0
cwlVersion: v1.1
baseCommand:
- delly
- lr

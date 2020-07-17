class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hitea.cwl
inputs:
- id: input_file_format
  doc: ':          Input file in pairsam format or unsorted-lossless bam format'
  type: string
  inputBinding:
    prefix: -i
- id: restriction_endunuclease_used
  doc: ":          Restriction endunuclease used for the assay (default: '', available:MboI,DpnII,HindIII,Arima,NcoI,NotI)"
  type: string
  inputBinding:
    prefix: -e
- id: genome_build_used
  doc: ':          Genome build to be used (default:hg38, available: hg19)'
  type: string
  inputBinding:
    prefix: -g
- id: fasta_format_file_teconsensus
  doc: ':           fasta format file for TE-consensus sequences'
  type: string
  inputBinding:
    prefix: -n
- id: fasta_format_file_repbase
  doc: ':         fasta format file for Repbase subfamily sequences'
  type: string
  inputBinding:
    prefix: -b
- id: fasta_format_file_polymorphic
  doc: ':          fasta format file for Polymorphic sequences (header should be Family~name
    format'
  type: string
  inputBinding:
    prefix: -p
- id: referencegenome_copies_tefamily
  doc: ':            reference-genome copies for TE-family members'
  type: string
  inputBinding:
    prefix: -a
- id: output_prefix_files
  doc: ':       Output prefix while generating report files (default: project)'
  type: string
  inputBinding:
    prefix: -o
- id: working_directory_where
  doc: ':          Working directory where the files are to be written'
  type: string
  inputBinding:
    prefix: -w
- id: mapping_quality_threshold
  doc: ':     Mapping quality threshold for repeat anchored mate on the reference
    genome (default: 28)'
  type: string
  inputBinding:
    prefix: -q
- id: minimum_clip_length
  doc: ':            Minimum clip length for detecting insertion (should be >=13bp)
    (default: 20) '
  type: string
  inputBinding:
    prefix: -s
- id: remap_unmapped_clipped
  doc: ':           whether to remap unmapped clipped reads to the polymoprhic sequences
    (default:F)'
  type: string
  inputBinding:
    prefix: -r
- id: file_wgs_experiment
  doc: ':             whether the file is a WGS experiment (default:F)'
  type: string
  inputBinding:
    prefix: -x
- id: display_help_message
  doc: ':            Display help message'
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- hitea

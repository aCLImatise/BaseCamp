class: CommandLineTool
id: hitea.cwl
inputs:
- id: in_input_file_pairsam
  doc: ':          Input file in pairsam format or unsorted-lossless bam format'
  type: File?
  inputBinding:
    prefix: -i
- id: in_restriction_endunuclease_used
  doc: ":          Restriction endunuclease used for the assay (default: '', available:MboI,DpnII,HindIII,Arima,NcoI,NotI)"
  type: string?
  inputBinding:
    prefix: -e
- id: in_genome_build_used
  doc: ':          Genome build to be used (default:hg38, available: hg19)'
  type: long?
  inputBinding:
    prefix: -g
- id: in_fasta_format_file_teconsensus
  doc: ':           fasta format file for TE-consensus sequences'
  type: File?
  inputBinding:
    prefix: -n
- id: in_fasta_format_file_repbase
  doc: ':         fasta format file for Repbase subfamily sequences'
  type: File?
  inputBinding:
    prefix: -b
- id: in_fasta_format_file_polymorphic
  doc: ':          fasta format file for Polymorphic sequences (header should be Family~name
    format'
  type: File?
  inputBinding:
    prefix: -p
- id: in_referencegenome_copies_tefamily
  doc: ':            reference-genome copies for TE-family members'
  type: string?
  inputBinding:
    prefix: -a
- id: in_output_prefix_generating
  doc: ':       Output prefix while generating report files (default: project)'
  type: string?
  inputBinding:
    prefix: -o
- id: in_working_directory_are
  doc: ':          Working directory where the files are to be written'
  type: Directory?
  inputBinding:
    prefix: -w
- id: in_mapping_quality_threshold
  doc: ':     Mapping quality threshold for repeat anchored mate on the reference
    genome (default: 28)'
  type: long?
  inputBinding:
    prefix: -q
- id: in_minimum_clip_length
  doc: ':            Minimum clip length for detecting insertion (should be >=13bp)
    (default: 20)'
  type: long?
  inputBinding:
    prefix: -s
- id: in_remap_unmapped_reads
  doc: ':           whether to remap unmapped clipped reads to the polymoprhic sequences
    (default:F)'
  type: string?
  inputBinding:
    prefix: -r
- id: in_file_is_experiment
  doc: ':             whether the file is a WGS experiment (default:F)'
  type: File?
  inputBinding:
    prefix: -x
- id: in_display_help_message
  doc: ':            Display help message'
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hitea

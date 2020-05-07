class: CommandLineTool
id: gem_mapper.cwl
inputs:
- id: input
  doc: (FASTA/FASTQ, default=stdin)
  type: File
  inputBinding:
    prefix: --input
- id: i1
  doc: '|-1 <file> (paired-end, end-1)'
  type: boolean
  inputBinding:
    prefix: --i1
- id: i2
  doc: '|-2 <file> (paired-end, end-2)'
  type: boolean
  inputBinding:
    prefix: --i2
- id: gzip_input
  doc: (gzip input)
  type: boolean
  inputBinding:
    prefix: --gzip-input
- id: bzip_input
  doc: (bzip input)
  type: boolean
  inputBinding:
    prefix: --bzip-input
- id: output
  doc: (default=stdout)
  type: string
  inputBinding:
    prefix: --output
- id: gzip_output
  doc: (gzip output)
  type: boolean
  inputBinding:
    prefix: --gzip-output
- id: bzip_output
  doc: (bzip output)
  type: boolean
  inputBinding:
    prefix: --bzip-output
- id: report_file
  doc: (default=disabled)
  type: File
  inputBinding:
    prefix: --report-file
- id: mapping_mode
  doc: "'fast'|'sensitive'|'customed' (default=fast)"
  type: boolean
  inputBinding:
    prefix: --mapping-mode
- id: alignment_max_error
  doc: <number|percentage> (default=0.12, 12%)
  type: boolean
  inputBinding:
    prefix: --alignment-max-error
- id: alignment_global_min_identity
  doc: <number|percentage> (default=80%)
  type: boolean
  inputBinding:
    prefix: --alignment-global-min-identity
- id: alignment_global_min_score
  doc: <number|percentage> (default=0.20)
  type: boolean
  inputBinding:
    prefix: --alignment-global-min-score
- id: alignment_local
  doc: "'never'|'if-unmapped' (default=if-unmapped)"
  type: boolean
  inputBinding:
    prefix: --alignment-local
- id: alignment_local_min_identity
  doc: <number|percentage> (default=40)
  type: boolean
  inputBinding:
    prefix: --alignment-local-min-identity
- id: alignment_local_min_score
  doc: <number|percentage> (default=20)
  type: boolean
  inputBinding:
    prefix: --alignment-local-min-score
- id: paired_end_alignment
  doc: (default=disabled)
  type: string
  inputBinding:
    prefix: --paired-end-alignment
- id: max_template_length
  doc: (default=10000)
  type: string
  inputBinding:
    prefix: --max-template-length
- id: discordant_pair_search
  doc: "'always'|'if-no-concordant'|'never' (default=if-no-concordant)"
  type: boolean
  inputBinding:
    prefix: --discordant-pair-search
- id: bisulfite_read
  doc: "'inferred','1','2','interleaved','non-stranded' (default=inferred)"
  type: boolean
  inputBinding:
    prefix: --bisulfite-read
- id: under_conversion_sequence
  doc: (default=NC_001416.1)
  type: string
  inputBinding:
    prefix: --underconversion_sequence
- id: over_conversion_sequence
  doc: (default=NC_001604.1)
  type: string
  inputBinding:
    prefix: --overconversion_sequence
- id: control_sequence
  doc: (default=NC_001422.1)
  type: string
  inputBinding:
    prefix: --control_sequence
- id: gap_affine_penalties
  doc: ',B,O,X (default=1,4,6,1)'
  type: string
  inputBinding:
    prefix: --gap-affine-penalties
- id: max_reported_matches
  doc: "|'all' (default=5)"
  type: string
  inputBinding:
    prefix: --max-reported-matches
- id: output_format
  doc: "'MAP'|'SAM' (default=SAM)"
  type: boolean
  inputBinding:
    prefix: --output-format
- id: sam_compact
  doc: "'true'|'false' (default=true)"
  type: boolean
  inputBinding:
    prefix: --sam-compact
- id: sam_read_group_header
  doc: (i.e. '@RG\tID:xx\tSM:yy') (default=NULL)
  type: string
  inputBinding:
    prefix: --sam-read-group-header
- id: threads
  doc: (default=#cores)
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: "'quiet'|'user'|'dev' (default=user)"
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- gem-mapper

class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/galru.cwl
inputs:
- id: db_dir
  doc: 'Base directory for species databases, defaults to bundled (default: None)'
  type: string
  inputBinding:
    prefix: --db_dir
- id: cas_fast_a
  doc: 'Cas gene FASTA file (optionally gzipped), defaults to bundled (default: None)'
  type: string
  inputBinding:
    prefix: --cas_fasta
- id: technology
  doc: 'Sequencing technology (default: map-ont)'
  type: string
  inputBinding:
    prefix: --technology
- id: threads
  doc: 'No. of threads to use (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: output_file
  doc: 'Output filename, defaults to STDOUT (default: None)'
  type: string
  inputBinding:
    prefix: --output_file
- id: extended_results
  doc: 'Output extended results (default: False)'
  type: boolean
  inputBinding:
    prefix: --extended_results
- id: gene_start_offset
  doc: 'Only count CRISPR reads which cover this base (default: 30)'
  type: string
  inputBinding:
    prefix: --gene_start_offset
- id: min_mapping_quality
  doc: 'Minimum mapping quality score (default: 10)'
  type: long
  inputBinding:
    prefix: --min_mapping_quality
- id: q_cov_margin
  doc: 'Maximum perc coverage difference between CRISPR and read (default: 100)'
  type: string
  inputBinding:
    prefix: --qcov_margin
- id: min_bit_score
  doc: 'Minimum blast bitscore (default: 38)'
  type: long
  inputBinding:
    prefix: --min_bitscore
- id: min_identity
  doc: 'Minimum blast identity (default: 95)'
  type: long
  inputBinding:
    prefix: --min_identity
- id: species
  doc: 'Species name, use galru_species to see all available (default: Mycobacterium_tuberculosis)'
  type: string
  inputBinding:
    prefix: --species
- id: debug
  doc: 'Turn on debugging and save intermediate files (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input_file
  doc: Input FASTQ file of uncorrected long reads (optionally gzipped)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- galru

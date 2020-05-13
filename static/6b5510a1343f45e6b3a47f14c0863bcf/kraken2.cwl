class: CommandLineTool
id: kraken2.cwl
inputs:
- id: db
  doc: 'Name for Kraken 2 DB (default: none)'
  type: string
  inputBinding:
    prefix: --db
- id: threads
  doc: 'Number of threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: quick
  doc: Quick operation (use first hit or hits)
  type: boolean
  inputBinding:
    prefix: --quick
- id: unclassified_out
  doc: Print unclassified sequences to filename
  type: File
  inputBinding:
    prefix: --unclassified-out
- id: classified_out
  doc: Print classified sequences to filename
  type: File
  inputBinding:
    prefix: --classified-out
- id: output
  doc: 'Print output to filename (default: stdout); "-" will suppress normal output'
  type: File
  inputBinding:
    prefix: --output
- id: confidence
  doc: 'Confidence score threshold (default: 0.0); must be in [0, 1].'
  type: double
  inputBinding:
    prefix: --confidence
- id: minimum_base_quality
  doc: 'Minimum base quality used in classification (def: 0, only effective with FASTQ
    input).'
  type: string
  inputBinding:
    prefix: --minimum-base-quality
- id: report
  doc: Print a report with aggregrate counts/clade to file
  type: File
  inputBinding:
    prefix: --report
- id: use_mpa_style
  doc: With --report, format report output like Kraken 1's kraken-mpa-report
  type: boolean
  inputBinding:
    prefix: --use-mpa-style
- id: report_zero_counts
  doc: With --report, report counts for ALL taxa, even if counts are zero
  type: boolean
  inputBinding:
    prefix: --report-zero-counts
- id: memory_mapping
  doc: Avoids loading database into RAM
  type: boolean
  inputBinding:
    prefix: --memory-mapping
- id: paired
  doc: The filenames provided have paired-end reads
  type: boolean
  inputBinding:
    prefix: --paired
- id: use_names
  doc: Print scientific names instead of just taxids
  type: boolean
  inputBinding:
    prefix: --use-names
- id: gzip_compressed
  doc: Input files are compressed with gzip
  type: boolean
  inputBinding:
    prefix: --gzip-compressed
- id: bzip2_compressed
  doc: Input files are compressed with bzip2
  type: boolean
  inputBinding:
    prefix: --bzip2-compressed
outputs: []
cwlVersion: v1.1
baseCommand:
- kraken2

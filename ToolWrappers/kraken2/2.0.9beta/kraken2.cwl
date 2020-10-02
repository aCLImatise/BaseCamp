class: CommandLineTool
id: kraken2.cwl
inputs:
- id: in_db
  doc: "Name for Kraken 2 DB\n(default: none)"
  type: long
  inputBinding:
    prefix: --db
- id: in_threads
  doc: 'Number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_quick
  doc: Quick operation (use first hit or hits)
  type: boolean
  inputBinding:
    prefix: --quick
- id: in_unclassified_out
  doc: Print unclassified sequences to filename
  type: File
  inputBinding:
    prefix: --unclassified-out
- id: in_classified_out
  doc: Print classified sequences to filename
  type: File
  inputBinding:
    prefix: --classified-out
- id: in_output
  doc: "Print output to filename (default: stdout); \"-\" will\nsuppress normal output"
  type: File
  inputBinding:
    prefix: --output
- id: in_confidence
  doc: "Confidence score threshold (default: 0.0); must be\nin [0, 1]."
  type: double
  inputBinding:
    prefix: --confidence
- id: in_minimum_base_quality
  doc: "Minimum base quality used in classification (def: 0,\nonly effective with\
    \ FASTQ input)."
  type: long
  inputBinding:
    prefix: --minimum-base-quality
- id: in_report
  doc: Print a report with aggregrate counts/clade to file
  type: File
  inputBinding:
    prefix: --report
- id: in_use_mpa_style
  doc: With --report, format report output like Kraken 1's
  type: boolean
  inputBinding:
    prefix: --use-mpa-style
- id: in_memory_mapping
  doc: Avoids loading database into RAM
  type: boolean
  inputBinding:
    prefix: --memory-mapping
- id: in_paired
  doc: The filenames provided have paired-end reads
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_use_names
  doc: Print scientific names instead of just taxids
  type: boolean
  inputBinding:
    prefix: --use-names
- id: in_gzip_compressed
  doc: Input files are compressed with gzip
  type: boolean
  inputBinding:
    prefix: --gzip-compressed
- id: in_bzip_two_compressed
  doc: Input files are compressed with bzip2
  type: boolean
  inputBinding:
    prefix: --bzip2-compressed
- id: in_minimum_hit_groups
  doc: "Minimum number of hit groups (overlapping k-mers\nsharing the same minimizer)\
    \ needed to make a call\n(default: 2)"
  type: long
  inputBinding:
    prefix: --minimum-hit-groups
- id: in_kraken_mpa_report
  doc: --report-zero-counts    With --report, report counts for ALL taxa, even if
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Print output to filename (default: stdout); \"-\" will\nsuppress normal output"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- kraken2

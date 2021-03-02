class: CommandLineTool
id: inchworm.cwl
inputs:
- id: in_reads
  doc: <str>             :fasta file containing reads
  type: boolean?
  inputBinding:
    prefix: --reads
- id: in_km_ers
  doc: <str>             :fasta file containing kmers
  type: boolean?
  inputBinding:
    prefix: --kmers
- id: in_km_er_files_listing
  doc: :file listing filenames containing kmers
  type: File?
  inputBinding:
    prefix: --kmer_files_listing
- id: in_run_inchworm
  doc: :run inchworm, report sequences
  type: boolean?
  inputBinding:
    prefix: --run_inchworm
- id: in_kmer_length_default
  doc: ':kmer length (default: 25, meaning 24mer overlaps)  max = 32 (stored as 64-bit
    integers, 2-base char encoding)'
  type: long?
  inputBinding:
    prefix: -K
- id: in_mink_mer_count
  doc: ':min kmer count, lower abundant kmers are pruned from graph (default: 1)'
  type: long?
  inputBinding:
    prefix: --minKmerCount
- id: in_min_contig_length
  doc: ':min contig length to be reported (default: 25)'
  type: long?
  inputBinding:
    prefix: -L
- id: in_min_assembly_coverage
  doc: '<int>   :min kmer coverage of an assembled contig to be reported (default:
    2)'
  type: boolean?
  inputBinding:
    prefix: --min_assembly_coverage
- id: in_coverage_outfile
  doc: :file to store per-base kmer coverage for contigs
  type: File?
  inputBinding:
    prefix: --coverage_outfile
- id: in_ds
  doc: :double-stranded RNA-Seq mode (not strand-specific)
  type: boolean?
  inputBinding:
    prefix: --DS
- id: in_no_prune_error_km_ers
  doc: :disable pruning of kmers that occur at below --min_ratio_non_error
  type: boolean?
  inputBinding:
    prefix: --no_prune_error_kmers
- id: in_min_ratio_non_error
  doc: ':min ratio for low/high alternative extension that is not an error (default:
    0.05)'
  type: double?
  inputBinding:
    prefix: --min_ratio_non_error
- id: in_num_threads
  doc: :number of threads to use.
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_monitor
  doc: ":verbosity. ( '1': recommended, '2': for debugging )"
  type: long?
  inputBinding:
    prefix: --monitor
- id: in_show_advanced
  doc: :more advanced options (mostly experimental)
  type: boolean?
  inputBinding:
    prefix: --show_advanced
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- inchworm

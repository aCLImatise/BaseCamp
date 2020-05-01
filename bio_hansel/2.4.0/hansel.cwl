#!/usr/bin/env cwl-runner

baseCommand:
- hansel
class: CommandLineTool
cwlVersion: v1.0
id: hansel
inputs:
- doc: Input genome FASTA/FASTQ files (can be Gzipped)
  id: f
  inputBinding:
    position: 0
  type: string
- doc: 'Scheme to use for subtyping (built-in: "heidelberg", "enteritidis", "typhi",
    "typhimurium", "tb_lineage"; OR user-specified: /path/to/user/scheme)'
  id: scheme
  inputBinding:
    prefix: --scheme
  type: string
- doc: Custom user-specified SNP substyping scheme name
  id: scheme_name
  inputBinding:
    prefix: --scheme-name
  type: string
- doc: Scheme subtype metadata table (tab-delimited file with ".tsv" or ".tab" extension
    or CSV with ".csv" extension format accepted; MUST contain column called "subtype")
  id: scheme_metadata
  inputBinding:
    prefix: --scheme-metadata
  type: string
- doc: reverse_reads, --paired-reads forward_reads reverse_reads FASTQ paired-end
    reads
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: genome_name, --input-fasta-genome-name fasta_path genome_name input fasta file
    path AND genome name
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: directory of input fasta files (.fasta|.fa|.fna) or FASTQ files (paired FASTQ
    should have same basename with "_\d\.(fastq|fq)" postfix to be automatically paired)
    (files can be Gzipped)
  id: input_directory
  inputBinding:
    prefix: --input-directory
  type: string
- doc: Subtyping summary output path (tab-delimited)
  id: output_summary
  inputBinding:
    prefix: --output-summary
  type: string
- doc: Subtyping kmer matching output path (tab-delimited)
  id: output_km_er_results
  inputBinding:
    prefix: --output-kmer-results
  type: string
- doc: Subtyping simple summary output path
  id: output_simple_summary
  inputBinding:
    prefix: --output-simple-summary
  type: string
- doc: Force existing output files to be overwritten
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: Output JSON representation of output files
  id: json
  inputBinding:
    prefix: --json
  type: boolean
- doc: Min k-mer freq/coverage
  id: min_km_er_freq
  inputBinding:
    prefix: --min-kmer-freq
  type: long
- doc: Max k-mer freq/coverage
  id: max_km_er_freq
  inputBinding:
    prefix: --max-kmer-freq
  type: long
- doc: Frequencies below this coverage are considered low coverage
  id: low_cov_depth_freq
  inputBinding:
    prefix: --low-cov-depth-freq
  type: string
- doc: Decimal proportion of maximum allowable missing kmers before being considered
    an error. (0.0 - 1.0)
  id: max_missing_km_ers
  inputBinding:
    prefix: --max-missing-kmers
  type: long
- doc: Minimum number of missing kmers to be considered an ambiguous result
  id: min_ambiguous_km_ers
  inputBinding:
    prefix: --min-ambiguous-kmers
  type: long
- doc: Overall kmer coverage below this value will trigger a low coverage warning
  id: low_cov_warning
  inputBinding:
    prefix: --low-cov-warning
  type: string
- doc: Decimal proportion of maximum allowable missing kmers to be considered an intermediate
    subtype. (0.0 - 1.0)
  id: max_intermediate_km_ers
  inputBinding:
    prefix: --max-intermediate-kmers
  type: long
- doc: Maximum number of scheme k-mers allowed before quitting with a usage warning.
    Default is 100000
  id: max_degenerate_km_ers
  inputBinding:
    prefix: --max-degenerate-kmers
  type: long
- doc: Number of parallel threads to run analysis (default=1)
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Logging verbosity level (-v == show warnings; -vvv == show debug info)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean

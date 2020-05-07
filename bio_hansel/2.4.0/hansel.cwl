class: CommandLineTool
id: hansel.cwl
inputs:
- id: f
  doc: Input genome FASTA/FASTQ files (can be Gzipped)
  type: string
  inputBinding:
    position: 0
- id: scheme
  doc: 'Scheme to use for subtyping (built-in: "heidelberg", "enteritidis", "typhi",
    "typhimurium", "tb_lineage"; OR user-specified: /path/to/user/scheme)'
  type: string
  inputBinding:
    prefix: --scheme
- id: scheme_name
  doc: Custom user-specified SNP substyping scheme name
  type: string
  inputBinding:
    prefix: --scheme-name
- id: scheme_metadata
  doc: Scheme subtype metadata table (tab-delimited file with ".tsv" or ".tab" extension
    or CSV with ".csv" extension format accepted; MUST contain column called "subtype")
  type: string
  inputBinding:
    prefix: --scheme-metadata
- id: p
  doc: reverse_reads, --paired-reads forward_reads reverse_reads FASTQ paired-end
    reads
  type: string
  inputBinding:
    prefix: -p
- id: i
  doc: genome_name, --input-fasta-genome-name fasta_path genome_name input fasta file
    path AND genome name
  type: string
  inputBinding:
    prefix: -i
- id: input_directory
  doc: directory of input fasta files (.fasta|.fa|.fna) or FASTQ files (paired FASTQ
    should have same basename with "_\d\.(fastq|fq)" postfix to be automatically paired)
    (files can be Gzipped)
  type: string
  inputBinding:
    prefix: --input-directory
- id: output_summary
  doc: Subtyping summary output path (tab-delimited)
  type: string
  inputBinding:
    prefix: --output-summary
- id: output_km_er_results
  doc: Subtyping kmer matching output path (tab-delimited)
  type: string
  inputBinding:
    prefix: --output-kmer-results
- id: output_simple_summary
  doc: Subtyping simple summary output path
  type: string
  inputBinding:
    prefix: --output-simple-summary
- id: force
  doc: Force existing output files to be overwritten
  type: boolean
  inputBinding:
    prefix: --force
- id: json
  doc: Output JSON representation of output files
  type: boolean
  inputBinding:
    prefix: --json
- id: min_km_er_freq
  doc: Min k-mer freq/coverage
  type: long
  inputBinding:
    prefix: --min-kmer-freq
- id: max_km_er_freq
  doc: Max k-mer freq/coverage
  type: long
  inputBinding:
    prefix: --max-kmer-freq
- id: low_cov_depth_freq
  doc: Frequencies below this coverage are considered low coverage
  type: string
  inputBinding:
    prefix: --low-cov-depth-freq
- id: max_missing_km_ers
  doc: Decimal proportion of maximum allowable missing kmers before being considered
    an error. (0.0 - 1.0)
  type: long
  inputBinding:
    prefix: --max-missing-kmers
- id: min_ambiguous_km_ers
  doc: Minimum number of missing kmers to be considered an ambiguous result
  type: long
  inputBinding:
    prefix: --min-ambiguous-kmers
- id: low_cov_warning
  doc: Overall kmer coverage below this value will trigger a low coverage warning
  type: string
  inputBinding:
    prefix: --low-cov-warning
- id: max_intermediate_km_ers
  doc: Decimal proportion of maximum allowable missing kmers to be considered an intermediate
    subtype. (0.0 - 1.0)
  type: long
  inputBinding:
    prefix: --max-intermediate-kmers
- id: max_degenerate_km_ers
  doc: Maximum number of scheme k-mers allowed before quitting with a usage warning.
    Default is 100000
  type: long
  inputBinding:
    prefix: --max-degenerate-kmers
- id: threads
  doc: Number of parallel threads to run analysis (default=1)
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: Logging verbosity level (-v == show warnings; -vvv == show debug info)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hansel

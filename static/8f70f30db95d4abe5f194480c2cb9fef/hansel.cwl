class: CommandLineTool
id: hansel.cwl
inputs:
- id: in_scheme
  doc: "Scheme to use for subtyping (built-in: \"heidelberg\",\n\"enteritidis\", \"\
    typhi\", \"typhimurium\", \"tb_lineage\";\nOR user-specified: /path/to/user/scheme)"
  type: File?
  inputBinding:
    prefix: --scheme
- id: in_scheme_name
  doc: Custom user-specified SNP substyping scheme name
  type: string?
  inputBinding:
    prefix: --scheme-name
- id: in_scheme_metadata
  doc: "Scheme subtype metadata table (tab-delimited file with\n\".tsv\" or \".tab\"\
    \ extension or CSV with \".csv\"\nextension format accepted; MUST contain column\
    \ called\n\"subtype\")"
  type: File?
  inputBinding:
    prefix: --scheme-metadata
- id: in_reversereads__forwardreads
  doc: "reverse_reads, --paired-reads forward_reads reverse_reads\nFASTQ paired-end\
    \ reads"
  type: string?
  inputBinding:
    prefix: -p
- id: in__inputfastagenomename_fastapath
  doc: "genome_name, --input-fasta-genome-name fasta_path genome_name\ninput fasta\
    \ file path AND genome name"
  type: File?
  inputBinding:
    prefix: -i
- id: in_input_directory
  doc: "directory of input fasta files (.fasta|.fa|.fna) or\nFASTQ files (paired FASTQ\
    \ should have same basename\nwith \"_\\d\\.(fastq|fq)\" postfix to be automatically\n\
    paired) (files can be Gzipped)"
  type: Directory?
  inputBinding:
    prefix: --input-directory
- id: in_output_summary
  doc: Subtyping summary output path (tab-delimited)
  type: File?
  inputBinding:
    prefix: --output-summary
- id: in_output_km_er_results
  doc: Subtyping kmer matching output path (tab-delimited)
  type: File?
  inputBinding:
    prefix: --output-kmer-results
- id: in_output_simple_summary
  doc: Subtyping simple summary output path
  type: File?
  inputBinding:
    prefix: --output-simple-summary
- id: in_force
  doc: Force existing output files to be overwritten
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_json
  doc: Output JSON representation of output files
  type: boolean?
  inputBinding:
    prefix: --json
- id: in_min_km_er_freq
  doc: Min k-mer freq/coverage
  type: long?
  inputBinding:
    prefix: --min-kmer-freq
- id: in_min_km_er_frac
  doc: Proportion of k-mer required for detection (0.0 - 1)
  type: long?
  inputBinding:
    prefix: --min-kmer-frac
- id: in_max_km_er_freq
  doc: Max k-mer freq/coverage
  type: long?
  inputBinding:
    prefix: --max-kmer-freq
- id: in_low_cov_depth_freq
  doc: "Frequencies below this coverage are considered low\ncoverage"
  type: string?
  inputBinding:
    prefix: --low-cov-depth-freq
- id: in_max_missing_km_ers
  doc: "Decimal proportion of maximum allowable missing kmers\nbefore being considered\
    \ an error. (0.0 - 1.0)"
  type: long?
  inputBinding:
    prefix: --max-missing-kmers
- id: in_min_ambiguous_km_ers
  doc: "Minimum number of missing kmers to be considered an\nambiguous result"
  type: long?
  inputBinding:
    prefix: --min-ambiguous-kmers
- id: in_low_cov_warning
  doc: "Overall kmer coverage below this value will trigger a\nlow coverage warning"
  type: string?
  inputBinding:
    prefix: --low-cov-warning
- id: in_max_intermediate_km_ers
  doc: "Decimal proportion of maximum allowable missing kmers\nto be considered an\
    \ intermediate subtype. (0.0 - 1.0)"
  type: long?
  inputBinding:
    prefix: --max-intermediate-kmers
- id: in_max_degenerate_km_ers
  doc: "Maximum number of scheme k-mers allowed before\nquitting with a usage warning.\
    \ Default is 100000"
  type: long?
  inputBinding:
    prefix: --max-degenerate-kmers
- id: in_threads
  doc: Number of parallel threads to run analysis (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: "Logging verbosity level (-v == show warnings; -vvv ==\nshow debug info)"
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_summary
  doc: Subtyping summary output path (tab-delimited)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_summary)
- id: out_output_km_er_results
  doc: Subtyping kmer matching output path (tab-delimited)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_km_er_results)
- id: out_output_simple_summary
  doc: Subtyping simple summary output path
  type: File?
  outputBinding:
    glob: $(inputs.in_output_simple_summary)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bio_hansel:2.6.1--py_0
cwlVersion: v1.1
baseCommand:
- hansel

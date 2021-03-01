class: CommandLineTool
id: valet.py.cwl
inputs:
- id: in_assembly_fast_a
  doc: Candidate assembly files
  type: File?
  inputBinding:
    prefix: --assembly-fasta
- id: in_assembly_names
  doc: Names for the different assemblies.
  type: string?
  inputBinding:
    prefix: --assembly-names
- id: in_reads
  doc: First Read File
  type: File?
  inputBinding:
    prefix: --reads
- id: in_fastq_filenames_thefirst
  doc: "Fastq filenames separated by commas that contain the\nfirst mates."
  type: long?
  inputBinding:
    prefix: --1
- id: in_fastq_filenames_thesecond
  doc: "Fastq filenames separated by commas that contain the\nsecond mates."
  type: long?
  inputBinding:
    prefix: --2
- id: in_coverage_file
  doc: Assembly created per-contig coverage file
  type: File?
  inputBinding:
    prefix: --coverage-file
- id: in_config_file
  doc: Config file with preset parameters.
  type: File?
  inputBinding:
    prefix: --config-file
- id: in_output_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_window_size
  doc: Sliding window size when determining misassemblies.
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_fast_a
  doc: "if set, input reads are fasta format (by default,\nreads are FASTQ)."
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_fast_q
  doc: if set, input reads are fastq format.
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_mini_ns
  doc: Min insert sizes for mate pairs separated by commas.
  type: long?
  inputBinding:
    prefix: --minins
- id: in_max_ins
  doc: Max insert sizes for mate pairs separated by commas.
  type: long?
  inputBinding:
    prefix: --maxins
- id: in_orientation
  doc: Orientation of the mates.
  type: string?
  inputBinding:
    prefix: --orientation
- id: in_mu
  doc: average mate pair insert sizes.
  type: string?
  inputBinding:
    prefix: --mu
- id: in_sigma
  doc: standard deviation of mate pair insert sizes.
  type: string?
  inputBinding:
    prefix: --sigma
- id: in_max_alignments
  doc: bowtie2 parameter to set the max number of alignments.
  type: long?
  inputBinding:
    prefix: --max-alignments
- id: in_email
  doc: Email to notify when job completes
  type: string?
  inputBinding:
    prefix: --email
- id: in_min_coverage
  doc: Minimum average coverage to run misassembly detection.
  type: long?
  inputBinding:
    prefix: --min-coverage
- id: in_coverage_multiplier
  doc: "When binning by coverage, the new high = high + high *\nmultiplier"
  type: string?
  inputBinding:
    prefix: --coverage-multiplier
- id: in_min_suspicious
  doc: "Minimum number of overlapping flagged miassemblies to\nmark region as suspicious."
  type: long?
  inputBinding:
    prefix: --min-suspicious
- id: in_suspicious_flank_size
  doc: "Mark region as suspicious if multiple signatures occur\nwithin this window\
    \ size."
  type: long?
  inputBinding:
    prefix: --suspicious-flank-size
- id: in_min_contig_length
  doc: Ignore contigs smaller than this length.
  type: long?
  inputBinding:
    prefix: --min-contig-length
- id: in_ignore_ends
  doc: "Ignore flagged regions within b bps from the ends of\nthe contigs."
  type: string?
  inputBinding:
    prefix: --ignore-ends
- id: in_breakpoint_bin
  doc: Bin sized used to find breakpoints.
  type: string?
  inputBinding:
    prefix: --breakpoint-bin
- id: in_orf_file
  doc: gff formatted file containing orfs
  type: File?
  inputBinding:
    prefix: --orf-file
- id: in_km_er
  doc: kmer length used for abundance estimation
  type: long?
  inputBinding:
    prefix: --kmer
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- valet.py

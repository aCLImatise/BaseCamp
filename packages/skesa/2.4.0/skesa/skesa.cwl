class: CommandLineTool
id: skesa.cwl
inputs:
- id: in__print_version
  doc: '[ --version ]              Print version'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_cores
  doc: (=0)              Number of cores to use (default all) [integer]
  type: long?
  inputBinding:
    prefix: --cores
- id: in_memory
  doc: "(=32)            Memory available (GB, only for sorted counter)\n[integer]"
  type: long?
  inputBinding:
    prefix: --memory
- id: in_hash_count
  doc: Use hash counter [flag]
  type: boolean?
  inputBinding:
    prefix: --hash_count
- id: in_estimated_km_ers
  doc: "(=100)  Estimated number of unique kmers for bloom\nfilter (millions, only\
    \ for hash counter)\n[integer]"
  type: long?
  inputBinding:
    prefix: --estimated_kmers
- id: in_skip_bloom_filter
  doc: "Don't do bloom filter; use --estimated_kmers as\nthe hash table size (only\
    \ for hash counter)\n[flag]"
  type: boolean?
  inputBinding:
    prefix: --skip_bloom_filter
- id: in_reads
  doc: "Input fasta/fastq file(s) for reads (could be\nused multiple times for different\
    \ runs, could\nbe gzipped) [string]"
  type: File?
  inputBinding:
    prefix: --reads
- id: in_use_paired_ends
  doc: "Indicates that a single (not comma separated)\nfasta/fastq file contains paired\
    \ reads [flag]"
  type: boolean?
  inputBinding:
    prefix: --use_paired_ends
- id: in_contigs_out
  doc: "Output file for contigs (stdout if not\nspecified) [string]"
  type: File?
  inputBinding:
    prefix: --contigs_out
- id: in_km_er
  doc: (=21)              Minimal kmer length for assembly [integer]
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_min_count
  doc: "Minimal count for kmers retained for comparing\nalternate choices [integer]"
  type: long?
  inputBinding:
    prefix: --min_count
- id: in_max_km_er
  doc: Maximal kmer length for assembly [integer]
  type: long?
  inputBinding:
    prefix: --max_kmer
- id: in_max_km_er_count
  doc: "Minimum acceptable average count for estimating\nthe maximal kmer length in\
    \ reads [integer]"
  type: long?
  inputBinding:
    prefix: --max_kmer_count
- id: in_vector_percent
  doc: "(=0.05)  Count for  vectors as a fraction of the read\nnumber (1. disables)\
    \ [float (0,1]]"
  type: double?
  inputBinding:
    prefix: --vector_percent
- id: in_insert_size
  doc: "Expected insert size for paired reads (if not\nprovided, it will be estimated)\
    \ [integer]"
  type: long?
  inputBinding:
    prefix: --insert_size
- id: in_steps
  doc: "(=11)             Number of assembly iterations from minimal to\nmaximal kmer\
    \ length in reads [integer]"
  type: long?
  inputBinding:
    prefix: --steps
- id: in_fraction
  doc: "(=0.1)         Maximum noise to signal ratio acceptable for\nextension [float\
    \ [0,1)]"
  type: double?
  inputBinding:
    prefix: --fraction
- id: in_max_snp_len
  doc: (=150)      Maximal snp length [integer]
  type: long?
  inputBinding:
    prefix: --max_snp_len
- id: in_min_contig
  doc: "(=200)       Minimal contig length reported in output\n[integer]"
  type: long?
  inputBinding:
    prefix: --min_contig
- id: in_allow_snps
  doc: Allow additional step for snp discovery [flag]
  type: boolean?
  inputBinding:
    prefix: --allow_snps
- id: in_force_single_ends
  doc: Don't use paired-end information [flag]
  type: boolean?
  inputBinding:
    prefix: --force_single_ends
- id: in_seeds
  doc: Input file with seeds [string]
  type: File?
  inputBinding:
    prefix: --seeds
- id: in_all
  doc: Output fasta for each iteration [string]
  type: string?
  inputBinding:
    prefix: --all
- id: in_dbg_out
  doc: Output kmer file [string]
  type: File?
  inputBinding:
    prefix: --dbg_out
- id: in_hist
  doc: File for histogram [string]
  type: File?
  inputBinding:
    prefix: --hist
- id: in_connected_reads
  doc: File for connected paired reads [string]
  type: File?
  inputBinding:
    prefix: --connected_reads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_contigs_out
  doc: "Output file for contigs (stdout if not\nspecified) [string]"
  type: File?
  outputBinding:
    glob: $(inputs.in_contigs_out)
- id: out_dbg_out
  doc: Output kmer file [string]
  type: File?
  outputBinding:
    glob: $(inputs.in_dbg_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/skesa:2.4.0--he1c1bb9_0
cwlVersion: v1.1
baseCommand:
- skesa

class: CommandLineTool
id: centrifuge.cwl
inputs:
- id: in_query_input_files_fastq
  doc: query input files are FASTQ .fq/.fastq (default)
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_q_seq
  doc: query input files are in Illumina's qseq format
  type: boolean?
  inputBinding:
    prefix: --qseq
- id: in_query_input_files_multifasta
  doc: query input files are (multi-)FASTA .fa/.mfa
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_query_input_files_raw
  doc: query input files are raw one-sequence-per-line
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_m_m_r
  doc: <m1>, <m2>, <r> are sequences themselves, not files
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_skip
  doc: skip the first <int> reads/pairs in the input (none)
  type: long?
  inputBinding:
    prefix: --skip
- id: in_up_to
  doc: stop after first <int> reads/pairs (no limit)
  type: long?
  inputBinding:
    prefix: --upto
- id: in_trim_five
  doc: trim <int> bases from 5'/left end of reads (0)
  type: long?
  inputBinding:
    prefix: --trim5
- id: in_trim_three
  doc: trim <int> bases from 3'/right end of reads (0)
  type: long?
  inputBinding:
    prefix: --trim3
- id: in_phred_three_three
  doc: qualities are Phred+33 (default)
  type: boolean?
  inputBinding:
    prefix: --phred33
- id: in_phred_six_four
  doc: qualities are Phred+64
  type: boolean?
  inputBinding:
    prefix: --phred64
- id: in_int_quals
  doc: qualities encoded as space-delimited integers
  type: boolean?
  inputBinding:
    prefix: --int-quals
- id: in_ignore_quals
  doc: treat all quality values as 30 on Phred scale (off)
  type: boolean?
  inputBinding:
    prefix: --ignore-quals
- id: in_no_fw
  doc: do not align forward (original) version of read (off)
  type: boolean?
  inputBinding:
    prefix: --nofw
- id: in_norc
  doc: do not align reverse-complement version of read (off)
  type: boolean?
  inputBinding:
    prefix: --norc
- id: in_min_hit_len
  doc: minimum length of partial hits (default 22, must be greater than 15)
  type: long?
  inputBinding:
    prefix: --min-hitlen
- id: in_report_upto_assignments
  doc: report upto <int> distinct, primary assignments for each read or pair
  type: long?
  inputBinding:
    prefix: -k
- id: in_host_tax_ids
  doc: comma-separated list of taxonomic IDs that will be preferred in classification
  type: string?
  inputBinding:
    prefix: --host-taxids
- id: in_exclude_tax_ids
  doc: comma-separated list of taxonomic IDs that will be excluded in classification
  type: string?
  inputBinding:
    prefix: --exclude-taxids
- id: in_out_fmt
  doc: define output format, either 'tab' or 'sam' (tab)
  type: string?
  inputBinding:
    prefix: --out-fmt
- id: in_tab_fmt_cols
  doc: "columns in tabular format, comma separated\ndefault: readID,seqID,taxID,score,2ndBestScore,hitLength,queryLength,numMatches"
  type: long?
  inputBinding:
    prefix: --tab-fmt-cols
- id: in_time
  doc: print wall-clock time taken by search phases
  type: boolean?
  inputBinding:
    prefix: --time
- id: in_un
  doc: write unpaired reads that didn't align to <path>
  type: File?
  inputBinding:
    prefix: --un
- id: in_al
  doc: write unpaired reads that aligned at least once to <path>
  type: File?
  inputBinding:
    prefix: --al
- id: in_un_conc
  doc: write pairs that didn't align concordantly to <path>
  type: File?
  inputBinding:
    prefix: --un-conc
- id: in_al_conc
  doc: write pairs that aligned concordantly at least once to <path>
  type: File?
  inputBinding:
    prefix: --al-conc
- id: in_un_gz
  doc: ", to gzip compress output, or add '-bz2' to bzip2 compress output.)"
  type: File?
  inputBinding:
    prefix: --un-gz
- id: in_quiet
  doc: print nothing to stderr except serious errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_met_file
  doc: send metrics to file at <path> (off)
  type: File?
  inputBinding:
    prefix: --met-file
- id: in_met_stderr
  doc: send metrics to stderr (off)
  type: boolean?
  inputBinding:
    prefix: --met-stderr
- id: in_met
  doc: report internal counters & metrics every <int> secs (1)
  type: long?
  inputBinding:
    prefix: --met
- id: in_threads
  doc: number of alignment threads to launch (1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_mm
  doc: use memory-mapped I/O for index; many instances can share
  type: boolean?
  inputBinding:
    prefix: --mm
- id: in_qc_filter
  doc: filter out reads that are bad according to QSEQ filter
  type: boolean?
  inputBinding:
    prefix: --qc-filter
- id: in_seed
  doc: seed for random number generator (0)
  type: long?
  inputBinding:
    prefix: --seed
- id: in_non_deterministic
  doc: rand. gen. arbitrarily instead of using read attributes
  type: string?
  inputBinding:
    prefix: --non-deterministic
- id: in_could
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cf_idx
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_m_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_m_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_var_40
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_report
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_s
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_specified
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_44
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_45
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_many
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tsv
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_gzip
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_times_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_e_dot_gdot
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_classification
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_58
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_tabular
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_unpaired
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_reads_dot
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_where
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_each
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_line
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_represents
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_var_68
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/centrifuge-core:1.0.4_beta--he513fc3_0
cwlVersion: v1.1
baseCommand:
- centrifuge

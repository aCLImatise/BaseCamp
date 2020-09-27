class: CommandLineTool
id: seqkit_bam.cwl
inputs:
- id: in_bins
  doc: number of histogram bins (default -1)
  type: long
  inputBinding:
    prefix: --bins
- id: in_bundle
  doc: partition BAM file into loci (-1) or bundles with this minimum size
  type: long
  inputBinding:
    prefix: --bundle
- id: in_count
  doc: count reads per reference and save to this file
  type: File
  inputBinding:
    prefix: --count
- id: in_delay
  doc: sleep this many seconds after plotting (default 1)
  type: long
  inputBinding:
    prefix: --delay
- id: in_dump
  doc: print histogram data to stderr instead of plotting
  type: boolean
  inputBinding:
    prefix: --dump
- id: in_exclude_ids
  doc: exclude records with IDs contained in this file
  type: File
  inputBinding:
    prefix: --exclude-ids
- id: in_exec_after
  doc: execute command after reporting
  type: string
  inputBinding:
    prefix: --exec-after
- id: in_exec_before
  doc: execute command before reporting
  type: string
  inputBinding:
    prefix: --exec-before
- id: in_field
  doc: target fields
  type: string
  inputBinding:
    prefix: --field
- id: in_grep_ids
  doc: only keep records with IDs contained in this file
  type: File
  inputBinding:
    prefix: --grep-ids
- id: in_idx_count
  doc: fast read per reference counting based on the BAM index
  type: boolean
  inputBinding:
    prefix: --idx-count
- id: in_idx_stat
  doc: fast statistics based on the BAM index
  type: boolean
  inputBinding:
    prefix: --idx-stat
- id: in_img
  doc: save histogram to this PDF/image file
  type: File
  inputBinding:
    prefix: --img
- id: in_list_fields
  doc: list all available BAM record features
  type: boolean
  inputBinding:
    prefix: --list-fields
- id: in_log
  doc: log10(x+1) transform numeric values
  type: boolean
  inputBinding:
    prefix: --log
- id: in_map_qual
  doc: minimum mapping quality
  type: long
  inputBinding:
    prefix: --map-qual
- id: in_pass
  doc: passthrough mode (forward filtered BAM to output)
  type: boolean
  inputBinding:
    prefix: --pass
- id: in_pretty
  doc: pretty print certain TSV outputs
  type: boolean
  inputBinding:
    prefix: --pretty
- id: in_prim_only
  doc: filter out non-primary alignment records
  type: boolean
  inputBinding:
    prefix: --prim-only
- id: in_print_freq
  doc: print/report after this many records (-1 for print after EOF) (default -1)
  type: long
  inputBinding:
    prefix: --print-freq
- id: in_quiet_mode
  doc: supress all plotting to stderr
  type: boolean
  inputBinding:
    prefix: --quiet-mode
- id: in_range_max
  doc: discard record with field (-f) value greater than this flag (default NaN)
  type: double
  inputBinding:
    prefix: --range-max
- id: in_range_min
  doc: discard record with field (-f) value less than this flag (default NaN)
  type: double
  inputBinding:
    prefix: --range-min
- id: in_reset
  doc: reset histogram after every report
  type: boolean
  inputBinding:
    prefix: --reset
- id: in_silent_mode
  doc: supress TSV output to stderr
  type: boolean
  inputBinding:
    prefix: --silent-mode
- id: in_stat
  doc: print BAM satistics of the input files
  type: boolean
  inputBinding:
    prefix: --stat
- id: in_tool
  doc: invoke toolbox in YAML format (see documentation)
  type: string
  inputBinding:
    prefix: --tool
- id: in_top_bam
  doc: save the top -? records to this bam file
  type: File
  inputBinding:
    prefix: --top-bam
- id: in_alphabet_guess_seq_length
  doc: length of sequence prefix of the first FASTA record based on which seqkit guesses
    the sequence type (0 for whole seq) (default 10000)
  type: long
  inputBinding:
    prefix: --alphabet-guess-seq-length
- id: in_id_ncbi
  doc: FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud...
  type: boolean
  inputBinding:
    prefix: --id-ncbi
- id: in_id_regexp
  doc: regular expression for parsing ID (default "^(\\S+)\\s?")
  type: string
  inputBinding:
    prefix: --id-regexp
- id: in_in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: File
  inputBinding:
    prefix: --infile-list
- id: in_line_width
  doc: line width when outputing FASTA format (0 for no wrap) (default 60)
  type: long
  inputBinding:
    prefix: --line-width
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  inputBinding:
    prefix: --out-file
- id: in_quiet
  doc: be quiet and do not show extra information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_seq_type
  doc: sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect
    by the first sequence) (default "auto")
  type: string
  inputBinding:
    prefix: --seq-type
- id: in_threads
  doc: 'number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also
    set with environment variable SEQKIT_THREADS) (default 2)'
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- seqkit
- bam

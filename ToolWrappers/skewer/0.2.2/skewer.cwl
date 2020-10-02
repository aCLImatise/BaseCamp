class: CommandLineTool
id: skewer.cwl
inputs:
- id: in_adapter_sequencefile_agatcggaagagcacacgtctgaactccagtcac
  doc: Adapter sequence/file (AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC)
  type: File
  inputBinding:
    prefix: -x
- id: in_adapter_sequencefile_pairend
  doc: "Adapter sequence/file for pair-end reads (AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTA),\n\
    implied by -x if -x is the only one specified explicitly."
  type: File
  inputBinding:
    prefix: -y
- id: in_matrix
  doc: File indicates valid adapter pairing (all-ones matrix).
  type: File
  inputBinding:
    prefix: --matrix
- id: in_junction_adapter_sequencefile
  doc: Junction adapter sequence/file for Nextera Mate Pair reads (CTGTCTCTTATACACATCTAGATGTGTATAAGAGACAG)
  type: File
  inputBinding:
    prefix: -j
- id: in_mode
  doc: "trimming mode; 1) single-end -- head: 5' end; tail: 3' end; any: anywhere\
    \ (tail)\n2) paired-end -- pe: paired-end; mp: mate-pair; ap: amplicon (pe)"
  type: long
  inputBinding:
    prefix: --mode
- id: in_barcode
  doc: Demultiplex reads according to adapters/primers (no)
  type: boolean
  inputBinding:
    prefix: --barcode
- id: in_maximum_allowed_errors
  doc: 'Maximum allowed error rate (normalized #errors / length of aligned region)
    [0, 0.5], (0.1)'
  type: long
  inputBinding:
    prefix: -r
- id: in_maximum_allowed_rate
  doc: "Maximum allowed indel error rate [0, r], (0.03)\nreciprocal is used for -r,\
    \ -e and -d when num > or = 2"
  type: long
  inputBinding:
    prefix: -d
- id: in_minimum_overlap_length
  doc: "Minimum overlap length for adapter detection [1, inf);\n(max(1, int(4-10*r))\
    \ for single-end; (<junction length>/2) for mate-pair)"
  type: long
  inputBinding:
    prefix: -k
- id: in_cut
  doc: ",<int> Hard clip off the 5' leading bases as the barcodes in amplicon mode;\
    \ (no)"
  type: long
  inputBinding:
    prefix: --cut
- id: in_cut_three
  doc: "Hard clip off the 3' tailing bases if the read length is greater than\nthe\
    \ maximum read length specified by -L; (no)"
  type: boolean
  inputBinding:
    prefix: --cut3
- id: in_end_quality
  doc: <int> Trim 3' end until specified or higher quality reached; (0)
  type: boolean
  inputBinding:
    prefix: --end-quality
- id: in_mean_quality
  doc: The lowest mean quality value allowed before trimming; (0)
  type: long
  inputBinding:
    prefix: --mean-quality
- id: in_min
  doc: The minimum read length allowed after trimming; (18)
  type: long
  inputBinding:
    prefix: --min
- id: in_max
  doc: The maximum read length allowed after trimming; (no limit)
  type: long
  inputBinding:
    prefix: --max
- id: in_filter_degenerative_many
  doc: Whether to filter out highly degenerative (many Ns) reads; (no)
  type: boolean
  inputBinding:
    prefix: -n
- id: in_filter_undetermined_matepair
  doc: Whether to filter out undetermined mate-pair reads; (no)
  type: boolean
  inputBinding:
    prefix: -u
- id: in_fill_ns
  doc: to replace trimmed bases with Ns (has no effect with 'b' or '-m mp'); (no)
  type: string
  inputBinding:
    prefix: --fillNs
- id: in_format
  doc: 'Format of FASTQ quality value: sanger|solexa|auto; (auto)'
  type: string
  inputBinding:
    prefix: --format
- id: in_output
  doc: Base name of output file; ('<reads>.trimmed')
  type: File
  inputBinding:
    prefix: --output
- id: in_compress
  doc: Compress output in GZIP format (no)
  type: boolean
  inputBinding:
    prefix: --compress
- id: in_stdout
  doc: Redirect output to STDOUT, suppressing -b, -o, and -z options (no)
  type: boolean
  inputBinding:
    prefix: --stdout
- id: in_q_ii_me
  doc: 'Prepare the "barcodes.fastq" and "mapping_file.txt" for processing with QIIME;
    (default: no)'
  type: boolean
  inputBinding:
    prefix: --qiime
- id: in_quiet
  doc: No progress update (not quiet)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_masked_output
  doc: Write output file(s) for trimmed reads (trimmed bases converted to lower case)
    (no)
  type: File
  inputBinding:
    prefix: --masked-output
- id: in_excluded_output
  doc: output file(s) for excluded reads (no)
  type: File
  inputBinding:
    prefix: --excluded-output
- id: in_intelligent
  doc: For mate-pair mode, whether to redistribute reads based on junction information;
    (no)
  type: boolean
  inputBinding:
    prefix: --intelligent
- id: in_threads
  doc: Number of concurrent threads [1, 32]; (1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_reads_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_paired_reads_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Base name of output file; ('<reads>.trimmed')
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_masked_output
  doc: Write output file(s) for trimmed reads (trimmed bases converted to lower case)
    (no)
  type: File
  outputBinding:
    glob: $(inputs.in_masked_output)
- id: out_excluded_output
  doc: output file(s) for excluded reads (no)
  type: File
  outputBinding:
    glob: $(inputs.in_excluded_output)
cwlVersion: v1.1
baseCommand:
- skewer

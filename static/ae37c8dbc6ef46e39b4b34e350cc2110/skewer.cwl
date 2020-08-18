class: CommandLineTool
id: ../../../skewer.cwl
inputs:
- id: adapter_sequencefile_agatcggaagagcacacgtctgaactccagtcac
  doc: Adapter sequence/file (AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC)
  type: string
  inputBinding:
    prefix: -x
- id: adapter_sequencefile_pairend
  doc: Adapter sequence/file for pair-end reads (AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTA),
    implied by -x if -x is the only one specified explicitly.
  type: string
  inputBinding:
    prefix: -y
- id: matrix
  doc: File indicates valid adapter pairing (all-ones matrix).
  type: string
  inputBinding:
    prefix: --matrix
- id: junction_adapter_sequencefile
  doc: Junction adapter sequence/file for Nextera Mate Pair reads (CTGTCTCTTATACACATCTAGATGTGTATAAGAGACAG)
  type: string
  inputBinding:
    prefix: -j
- id: mode
  doc: "trimming mode; 1) single-end -- head: 5' end; tail: 3' end; any: anywhere\
    \ (tail) 2) paired-end -- pe: paired-end; mp: mate-pair; ap: amplicon (pe)"
  type: string
  inputBinding:
    prefix: --mode
- id: barcode
  doc: Demultiplex reads according to adapters/primers (no)
  type: boolean
  inputBinding:
    prefix: --barcode
- id: maximum_allowed_errors
  doc: 'Maximum allowed error rate (normalized #errors / length of aligned region)
    [0, 0.5], (0.1)'
  type: string
  inputBinding:
    prefix: -r
- id: maximum_allowed_rate
  doc: Maximum allowed indel error rate [0, r], (0.03) reciprocal is used for -r,
    -e and -d when num > or = 2
  type: string
  inputBinding:
    prefix: -d
- id: minimum_overlap_length
  doc: Minimum overlap length for adapter detection [1, inf); (max(1, int(4-10*r))
    for single-end; (<junction length>/2) for mate-pair)
  type: long
  inputBinding:
    prefix: -k
- id: cut
  doc: ",<int> Hard clip off the 5' leading bases as the barcodes in amplicon mode;\
    \ (no)"
  type: long
  inputBinding:
    prefix: --cut
- id: cut_three
  doc: Hard clip off the 3' tailing bases if the read length is greater than the maximum
    read length specified by -L; (no)
  type: boolean
  inputBinding:
    prefix: --cut3
- id: end_quality
  doc: <int> Trim 3' end until specified or higher quality reached; (0)
  type: boolean
  inputBinding:
    prefix: --end-quality
- id: mean_quality
  doc: The lowest mean quality value allowed before trimming; (0)
  type: long
  inputBinding:
    prefix: --mean-quality
- id: min
  doc: The minimum read length allowed after trimming; (18)
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: The maximum read length allowed after trimming; (no limit)
  type: long
  inputBinding:
    prefix: --max
- id: filter_degenerative_many
  doc: Whether to filter out highly degenerative (many Ns) reads; (no)
  type: boolean
  inputBinding:
    prefix: -n
- id: filter_undetermined_matepair
  doc: Whether to filter out undetermined mate-pair reads; (no)
  type: boolean
  inputBinding:
    prefix: -u
- id: fill_ns
  doc: to replace trimmed bases with Ns (has no effect with 'b' or '-m mp'); (no)
  type: string
  inputBinding:
    prefix: --fillNs
- id: format
  doc: 'Format of FASTQ quality value: sanger|solexa|auto; (auto)'
  type: string
  inputBinding:
    prefix: --format
- id: output
  doc: Base name of output file; ('<reads>.trimmed')
  type: string
  inputBinding:
    prefix: --output
- id: compress
  doc: Compress output in GZIP format (no)
  type: boolean
  inputBinding:
    prefix: --compress
- id: stdout
  doc: Redirect output to STDOUT, suppressing -b, -o, and -z options (no)
  type: boolean
  inputBinding:
    prefix: --stdout
- id: q_ii_me
  doc: 'Prepare the "barcodes.fastq" and "mapping_file.txt" for processing with QIIME;
    (default: no)'
  type: boolean
  inputBinding:
    prefix: --qiime
- id: quiet
  doc: No progress update (not quiet)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: masked_output
  doc: Write output file(s) for trimmed reads (trimmed bases converted to lower case)
    (no)
  type: boolean
  inputBinding:
    prefix: --masked-output
- id: excluded_output
  doc: output file(s) for excluded reads (no)
  type: string
  inputBinding:
    prefix: --excluded-output
- id: intelligent
  doc: For mate-pair mode, whether to redistribute reads based on junction information;
    (no)
  type: boolean
  inputBinding:
    prefix: --intelligent
- id: threads
  doc: Number of concurrent threads [1, 32]; (1)
  type: long
  inputBinding:
    prefix: --threads
- id: reads_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: paired_reads_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- skewer

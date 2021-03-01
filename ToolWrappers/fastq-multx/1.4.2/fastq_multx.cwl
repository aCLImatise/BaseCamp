class: CommandLineTool
id: fastq_multx.cwl
inputs:
- id: in_output_files_one
  doc: Output files (one per input, required)
  type: long?
  inputBinding:
    prefix: -o
- id: in_determine_barcodes_seqfil
  doc: Determine barcodes from the indexed read SEQFIL
  type: string?
  inputBinding:
    prefix: -g
- id: in_determine_barcodes_read
  doc: Determine barcodes from any read, using BCFIL as a master list
  type: string?
  inputBinding:
    prefix: -l
- id: in_determine_barcodes_readfq
  doc: Determine barcodes from <read1.fq>, using BCFIL as a master list
  type: long?
  inputBinding:
    prefix: -L
- id: in_use_barcodes_bcfil
  doc: Use barcodes from BCFIL, no determination step, codes in <read1.fq>
  type: long?
  inputBinding:
    prefix: -B
- id: in_use_barcodes_read
  doc: Use barcodes from illumina's header, instead of a read
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_force_beginning_line
  doc: Force beginning of line (5') for barcode matching
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_force_end_line
  doc: Force end of line (3') for barcode matching
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_divide_threshold_sensitive
  doc: Divide threshold for auto-determine by factor NUM (1), > 1 = more sensitive
  type: long?
  inputBinding:
    prefix: -t
- id: in_use_groups_matching
  doc: Use group(s) matching NAME only
  type: string?
  inputBinding:
    prefix: -G
- id: in_trim_barcodes_writing
  doc: Don't trim barcodes off before writing out destination
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_execute_print_list
  doc: Don't execute, just print likely barcode list
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_verify_mated_d
  doc: Verify that mated id's match up to character C (Use ' ' for illumina)
  type: string?
  inputBinding:
    prefix: -v
- id: in_allow_n_mismatches
  doc: Allow N mismatches in union of all indexes, unless -M is supplied. (1)
  type: long?
  inputBinding:
    prefix: -m
- id: in_allow_nm_mismatches
  doc: Allow N,M mismatches in indexes 1,2 respectively (see -m N) (not used)
  type: long?
  inputBinding:
    prefix: -M
- id: in_require_minimum_distance
  doc: Require a minimum distance of N between the best and next best (2)
  type: long?
  inputBinding:
    prefix: -d
- id: in_require_minimum_quality
  doc: Require a minimum phred quality of N to accept a barcode base (0)
  type: long?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastq-multx:1.4.2--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- fastq-multx

class: CommandLineTool
id: flexbar.cwl
inputs:
- id: full_help
  doc: Display the help message with advanced options.
  type: boolean
  inputBinding:
    prefix: --full-help
- id: versions
  doc: Print Flexbar and SeqAn version numbers.
  type: boolean
  inputBinding:
    prefix: --versions
- id: cite
  doc: Show program references for citation.
  type: boolean
  inputBinding:
    prefix: --cite
- id: threads
  doc: 'Number of threads to employ. Default: 1.'
  type: long
  inputBinding:
    prefix: --threads
- id: target
  doc: 'Prefix for output file names or paths. Default: flexbarOut.'
  type: string
  inputBinding:
    prefix: --target
- id: reads
  doc: Fasta/q file or stdin (-) with reads that may contain barcodes.
  type: string
  inputBinding:
    prefix: --reads
- id: read_s2
  doc: Second input file of paired reads, gz and bz2 files supported.
  type: string
  inputBinding:
    prefix: --reads2
- id: barcodes
  doc: Fasta file with barcodes for demultiplexing, may contain N.
  type: string
  inputBinding:
    prefix: --barcodes
- id: barcode_reads
  doc: Fasta/q file containing separate barcode reads for detection.
  type: string
  inputBinding:
    prefix: --barcode-reads
- id: barcode_min_overlap
  doc: 'Minimum overlap of barcode and read. Default: barcode length.'
  type: long
  inputBinding:
    prefix: --barcode-min-overlap
- id: barcode_error_rate
  doc: 'Error rate threshold for mismatches and gaps. Default: 0.0.'
  type: string
  inputBinding:
    prefix: --barcode-error-rate
- id: barcode_trim_end
  doc: 'Type of detection, see section trim-end modes. Default: LTAIL.'
  type: string
  inputBinding:
    prefix: --barcode-trim-end
- id: adapters
  doc: Fasta file with adapters for removal that may contain N.
  type: string
  inputBinding:
    prefix: --adapters
- id: adapters_2
  doc: File with extra adapters for second read set in paired mode.
  type: string
  inputBinding:
    prefix: --adapters2
- id: adapter_preset
  doc: One of TruSeq, SmallRNA, Methyl, Ribo, Nextera, and NexteraMP.
  type: string
  inputBinding:
    prefix: --adapter-preset
- id: adapter_min_overlap
  doc: 'Minimum overlap for removal without pair overlap. Default: 3.'
  type: long
  inputBinding:
    prefix: --adapter-min-overlap
- id: adapter_error_rate
  doc: 'Error rate threshold for mismatches and gaps. Default: 0.1.'
  type: string
  inputBinding:
    prefix: --adapter-error-rate
- id: adapter_trim_end
  doc: 'Type of removal, see section trim-end modes. Default: RIGHT.'
  type: string
  inputBinding:
    prefix: --adapter-trim-end
- id: adapter_pair_overlap
  doc: Overlap detection of paired reads. One of ON, SHORT, and ONLY.
  type: string
  inputBinding:
    prefix: --adapter-pair-overlap
- id: max_uncalled
  doc: 'Allowed uncalled bases N for each read. Default: 0.'
  type: long
  inputBinding:
    prefix: --max-uncalled
- id: pre_trim_left
  doc: Trim given number of bases on 5' read end before detection.
  type: long
  inputBinding:
    prefix: --pre-trim-left
- id: pre_trim_right
  doc: Trim specified number of bases on 3' end prior to detection.
  type: long
  inputBinding:
    prefix: --pre-trim-right
- id: min_read_length
  doc: 'Minimum read length to remain after removal. Default: 18.'
  type: long
  inputBinding:
    prefix: --min-read-length
- id: q_trim
  doc: Quality-based trimming mode. One of TAIL, WIN, and BWA.
  type: string
  inputBinding:
    prefix: --qtrim
- id: q_trim_format
  doc: Quality format. One of sanger, solexa, i1.3, i1.5, and i1.8.
  type: string
  inputBinding:
    prefix: --qtrim-format
- id: q_trim_threshold
  doc: 'Minimum quality as threshold for trimming. Default: 20.'
  type: long
  inputBinding:
    prefix: --qtrim-threshold
- id: h_trim_right
  doc: Trim certain homopolymers on right read end after removal.
  type: string
  inputBinding:
    prefix: --htrim-right
- id: h_trim_min_length
  doc: 'Minimum length of homopolymers at read ends. Default: 3.'
  type: long
  inputBinding:
    prefix: --htrim-min-length
- id: h_trim_error_rate
  doc: 'Error rate threshold for mismatches. Default: 0.1.'
  type: string
  inputBinding:
    prefix: --htrim-error-rate
- id: align_log
  doc: Print chosen read alignments. One of ALL, MOD, and TAB.
  type: string
  inputBinding:
    prefix: --align-log
- id: stdout_log
  doc: Write statistics to stdout instead of target log file.
  type: boolean
  inputBinding:
    prefix: --stdout-log
- id: removal_tags
  doc: Tag reads that are subject to adapter or barcode removal.
  type: boolean
  inputBinding:
    prefix: --removal-tags
outputs: []
cwlVersion: v1.1
baseCommand:
- flexbar

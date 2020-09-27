class: CommandLineTool
id: flexbar.cwl
inputs:
- id: in_full_help
  doc: Display the help message with advanced options.
  type: boolean
  inputBinding:
    prefix: --full-help
- id: in_versions
  doc: Print Flexbar and SeqAn version numbers.
  type: boolean
  inputBinding:
    prefix: --versions
- id: in_cite
  doc: Show program references for citation.
  type: boolean
  inputBinding:
    prefix: --cite
- id: in_threads
  doc: 'Number of threads to employ. Default: 1.'
  type: long
  inputBinding:
    prefix: --threads
- id: in_target
  doc: 'Prefix for output file names or paths. Default: flexbarOut.'
  type: File
  inputBinding:
    prefix: --target
- id: in_reads
  doc: Fasta/q file or stdin (-) with reads that may contain barcodes.
  type: File
  inputBinding:
    prefix: --reads
- id: in_reads_two
  doc: Second input file of paired reads, gz and bz2 files supported.
  type: File
  inputBinding:
    prefix: --reads2
- id: in_barcodes
  doc: Fasta file with barcodes for demultiplexing, may contain N.
  type: File
  inputBinding:
    prefix: --barcodes
- id: in_barcode_reads
  doc: Fasta/q file containing separate barcode reads for detection.
  type: File
  inputBinding:
    prefix: --barcode-reads
- id: in_barcode_min_overlap
  doc: 'Minimum overlap of barcode and read. Default: barcode length.'
  type: long
  inputBinding:
    prefix: --barcode-min-overlap
- id: in_barcode_error_rate
  doc: 'Error rate threshold for mismatches and gaps. Default: 0.0.'
  type: double
  inputBinding:
    prefix: --barcode-error-rate
- id: in_barcode_trim_end
  doc: 'Type of detection, see section trim-end modes. Default: LTAIL.'
  type: string
  inputBinding:
    prefix: --barcode-trim-end
- id: in_adapters
  doc: Fasta file with adapters for removal that may contain N.
  type: File
  inputBinding:
    prefix: --adapters
- id: in_adapters_two
  doc: File with extra adapters for second read set in paired mode.
  type: File
  inputBinding:
    prefix: --adapters2
- id: in_adapter_preset
  doc: One of TruSeq, SmallRNA, Methyl, Ribo, Nextera, and NexteraMP.
  type: string
  inputBinding:
    prefix: --adapter-preset
- id: in_adapter_min_overlap
  doc: 'Minimum overlap for removal without pair overlap. Default: 3.'
  type: long
  inputBinding:
    prefix: --adapter-min-overlap
- id: in_adapter_error_rate
  doc: 'Error rate threshold for mismatches and gaps. Default: 0.1.'
  type: double
  inputBinding:
    prefix: --adapter-error-rate
- id: in_adapter_trim_end
  doc: 'Type of removal, see section trim-end modes. Default: RIGHT.'
  type: string
  inputBinding:
    prefix: --adapter-trim-end
- id: in_adapter_pair_overlap
  doc: Overlap detection of paired reads. One of ON, SHORT, and ONLY.
  type: string
  inputBinding:
    prefix: --adapter-pair-overlap
- id: in_max_uncalled
  doc: 'Allowed uncalled bases N for each read. Default: 0.'
  type: long
  inputBinding:
    prefix: --max-uncalled
- id: in_pre_trim_left
  doc: Trim given number of bases on 5' read end before detection.
  type: long
  inputBinding:
    prefix: --pre-trim-left
- id: in_pre_trim_right
  doc: Trim specified number of bases on 3' end prior to detection.
  type: long
  inputBinding:
    prefix: --pre-trim-right
- id: in_min_read_length
  doc: 'Minimum read length to remain after removal. Default: 18.'
  type: long
  inputBinding:
    prefix: --min-read-length
- id: in_q_trim
  doc: Quality-based trimming mode. One of TAIL, WIN, and BWA.
  type: string
  inputBinding:
    prefix: --qtrim
- id: in_q_trim_format
  doc: Quality format. One of sanger, solexa, i1.3, i1.5, and i1.8.
  type: double
  inputBinding:
    prefix: --qtrim-format
- id: in_q_trim_threshold
  doc: 'Minimum quality as threshold for trimming. Default: 20.'
  type: long
  inputBinding:
    prefix: --qtrim-threshold
- id: in_h_trim_right
  doc: Trim certain homopolymers on right read end after removal.
  type: string
  inputBinding:
    prefix: --htrim-right
- id: in_h_trim_min_length
  doc: 'Minimum length of homopolymers at read ends. Default: 3.'
  type: long
  inputBinding:
    prefix: --htrim-min-length
- id: in_h_trim_error_rate
  doc: 'Error rate threshold for mismatches. Default: 0.1.'
  type: double
  inputBinding:
    prefix: --htrim-error-rate
- id: in_fast_a_output
  doc: Prefer non-quality format fasta for output.
  type: boolean
  inputBinding:
    prefix: --fasta-output
- id: in_zip_output
  doc: Direct compression of output files. One of GZ and BZ2.
  type: long
  inputBinding:
    prefix: --zip-output
- id: in_stdout_reads
  doc: Write reads to stdout, tagged and interleaved if needed.
  type: boolean
  inputBinding:
    prefix: --stdout-reads
- id: in_align_log
  doc: Print chosen read alignments. One of ALL, MOD, and TAB.
  type: string
  inputBinding:
    prefix: --align-log
- id: in_stdout_log
  doc: Write statistics to stdout instead of target log file.
  type: boolean
  inputBinding:
    prefix: --stdout-log
- id: in_removal_tags
  doc: Tag reads that are subject to adapter or barcode removal.
  type: boolean
  inputBinding:
    prefix: --removal-tags
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_target
  doc: 'Prefix for output file names or paths. Default: flexbarOut.'
  type: File
  outputBinding:
    glob: $(inputs.in_target)
cwlVersion: v1.1
baseCommand:
- flexbar

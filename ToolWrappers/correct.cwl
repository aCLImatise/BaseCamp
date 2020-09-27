class: CommandLineTool
id: correct.cwl
inputs:
- id: in_fastq_file_reads
  doc: Fastq file of reads
  type: File
  inputBinding:
    prefix: -r
- id: in_file_containing_names
  doc: "File containing fastq file names, one per line or\ntwo per line for paired\
    \ end reads."
  type: File
  inputBinding:
    prefix: -f
- id: in_write_output_files
  doc: Write output files as gzipped.
  type: boolean
  inputBinding:
    prefix: -z
- id: in_kmer_size_correct
  doc: K-mer size to correct.
  type: long
  inputBinding:
    prefix: -k
- id: in_file_containing_counts
  doc: "File containing kmer counts in format `seq  count`.\nCan be gzipped."
  type: File
  inputBinding:
    prefix: -m
- id: in_file_containing_saved
  doc: File containing saved bithash.
  type: File
  inputBinding:
    prefix: -b
- id: in_separate_trusteduntrusted_kmers_cutoff
  doc: Separate trusted/untrusted kmers at cutoff <num>
  type: long
  inputBinding:
    prefix: -c
- id: in_separate_trusteduntrusted_kmers_function
  doc: "Separate trusted/untrusted kmers as a function of AT\ncontent, with cutoffs\
    \ found in <file>, one per line"
  type: File
  inputBinding:
    prefix: -a
- id: in_use_num_threads
  doc: Use <num> openMP threads
  type: long
  inputBinding:
    prefix: -p
- id: in_return_only_reads
  doc: "=30\nReturn only reads corrected and/or trimmed to >= <num>\nbp"
  type: long
  inputBinding:
    prefix: -l
- id: in_quality_value_ascii
  doc: "Quality value ascii scale, generally 64 or 33. If not\nspecified, it will\
    \ guess."
  type: long
  inputBinding:
    prefix: -q
- id: in_use_bwa_trim
  doc: "=3\nUse BWA trim parameter <num>"
  type: long
  inputBinding:
    prefix: -t
- id: in_output_errors_reads
  doc: "Output errors reads even if they can't be corrected,\nmaintaining paired end\
    \ reads."
  type: boolean
  inputBinding:
    prefix: -u
- id: in_headers
  doc: "Output only the original read headers without\ncorrection messages"
  type: boolean
  inputBinding:
    prefix: --headers
- id: in_log
  doc: "Output a log of all corrections into *.log as\n'quality position new_nt old_nt'\n"
  type: boolean
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- correct

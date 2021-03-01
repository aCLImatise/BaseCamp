class: CommandLineTool
id: quake.py.cwl
inputs:
- id: in_fastq_file_reads
  doc: Fastq file of reads
  type: File?
  inputBinding:
    prefix: -r
- id: in_file_containing_names
  doc: "File containing fastq file names, one per line or two\nper line for paired\
    \ end reads."
  type: File?
  inputBinding:
    prefix: -f
- id: in_size_kmers_correct
  doc: Size of k-mers to correct
  type: long?
  inputBinding:
    prefix: -k
- id: in_number_of_processes
  doc: 'Number of processes [default: 4]'
  type: long?
  inputBinding:
    prefix: -p
- id: in_quality_value_ascii
  doc: "Quality value ascii scale, generally 64 or 33. If not\nspecified, it will\
    \ guess."
  type: long?
  inputBinding:
    prefix: -q
- id: in_no_jelly
  doc: Count k-mers using a simpler program than Jellyfish
  type: boolean?
  inputBinding:
    prefix: --no_jelly
- id: in_no_count
  doc: "Kmers are already counted and in expected file [reads\nfile].qcts or [reads\
    \ file].cts [default: False]"
  type: boolean?
  inputBinding:
    prefix: --no_count
- id: in_int
  doc: "Count kmers as integers w/o the use of quality values\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --int
- id: in_hash_size
  doc: "Jellyfish hash-size parameter. Quake will estimate\nusing k if not given"
  type: long?
  inputBinding:
    prefix: --hash_size
- id: in_no_cut
  doc: "Coverage model is optimized and cutoff was printed to\nexpected file cutoff.txt\
    \ [default: False]"
  type: boolean?
  inputBinding:
    prefix: --no_cut
- id: in_ratio
  doc: "Likelihood ratio to set trusted/untrusted cutoff.\nGenerally set between 10-1000\
    \ with lower numbers\nsuggesting a lower threshold. [default: 200]"
  type: long?
  inputBinding:
    prefix: --ratio
- id: in_return_only_reads
  doc: "Return only reads corrected and/or trimmed to\n<min_read> bp"
  type: long?
  inputBinding:
    prefix: -l
- id: in_output_error_reads
  doc: "Output error reads even if they can't be corrected,\nmaintaing paired end\
    \ reads"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_use_bwalike_trim
  doc: Use BWA-like trim parameter <trim_par>
  type: string?
  inputBinding:
    prefix: -t
- id: in_headers
  doc: "Output only the original read headers without\ncorrection messages"
  type: boolean?
  inputBinding:
    prefix: --headers
- id: in_log
  doc: "Output a log of all corrections into *.log as \"quality\nposition new_nt old_nt\"\
    \n"
  type: boolean?
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- quake.py

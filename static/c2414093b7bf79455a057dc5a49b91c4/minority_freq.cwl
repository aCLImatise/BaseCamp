class: CommandLineTool
id: minority_freq.cwl
inputs:
- id: in_start
  doc: "Starting position of the region of interest, 0-based\nindexing (default: None)"
  type: long?
  inputBinding:
    prefix: --start
- id: in_end
  doc: "Ending position of the region of interest, 0-based\nindexing. Note a half-open\
    \ interval is used, i.e,\n[start:end) (default: None)"
  type: long?
  inputBinding:
    prefix: --end
- id: in_config
  doc: "Report minority aminoacids - a .config file specifying\nreading frames expected\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --config
- id: in_minimum_read_depth
  doc: "Minimum read depth for reporting variants per locus\nand sample (default:\
    \ 100)"
  type: long?
  inputBinding:
    prefix: -c
- id: in_name_patientsample_identifiers
  doc: ",name2,...    Patient/sample identifiers as comma separated strings\n(default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: -N
- id: in_number_threads_default
  doc: 'Number of threads (default: 1)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_freqs
  doc: "Indicates whether or not all frequencies should be\nstored (default: False)"
  type: boolean?
  inputBinding:
    prefix: --freqs
- id: in_indicates_coverage_be
  doc: "Indicates whether coverage per locus should be written\nto output file (default:\
    \ False)"
  type: File?
  inputBinding:
    prefix: -d
- id: in_output_directory_default
  doc: 'Output directory (default: /)'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_fasta_file_containing
  doc: "Either a fasta file containing a reference sequence or\nthe reference name\
    \ of the region/chromosome of\ninterest. The latter is expected if a region is\n\
    specified (default: None)\n"
  type: File?
  inputBinding:
    prefix: -r
- id: in_bam
  doc: BAM file(s)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_indicates_coverage_be
  doc: "Indicates whether coverage per locus should be written\nto output file (default:\
    \ False)"
  type: File?
  outputBinding:
    glob: $(inputs.in_indicates_coverage_be)
- id: out_output_directory_default
  doc: 'Output directory (default: /)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_default)
hints: []
cwlVersion: v1.1
baseCommand:
- minority_freq

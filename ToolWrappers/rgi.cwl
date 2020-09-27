class: CommandLineTool
id: rgi.cwl
inputs:
- id: in_input_type
  doc: "must be one of contig, orf, protein, read (default:\ncontig)"
  type: string
  inputBinding:
    prefix: --input_type
- id: in_input_sequence
  doc: "input file must be in either FASTA (contig and\nprotein), FASTQ(read) or gzip\
    \ format! e.g\nmyFile.fasta, myFasta.fasta.gz"
  type: File
  inputBinding:
    prefix: --input_sequence
- id: in_num_threads
  doc: "Number of threads (CPUs) to use in the BLAST search\n(default=32)"
  type: long
  inputBinding:
    prefix: --num_threads
- id: in_output_file
  doc: Output JSON file (default=Report)
  type: File
  inputBinding:
    prefix: --output_file
- id: in_loose_criteria
  doc: "The options are YES to include loose hits and NO to\nexclude loose hits. (default=NO\
    \ to exclude loose hits)"
  type: string
  inputBinding:
    prefix: --loose_criteria
- id: in_clean
  doc: "This removes temporary files in the results directory\nafter run. Options\
    \ are NO or YES (default=YES for\nremove)"
  type: Directory
  inputBinding:
    prefix: --clean
- id: in_data
  doc: "Specify a data-type, i.e. wgs, chromosome, plasmid,\netc. (default = NA)"
  type: string
  inputBinding:
    prefix: --data
- id: in_verbose
  doc: "log progress to file. Options are OFF or ON (default =\nOFF for no logging)"
  type: File
  inputBinding:
    prefix: --verbose
- id: in_alignment_tool
  doc: "choose between BLAST and DIAMOND. Options are BLAST or\nDIAMOND (default =\
    \ BLAST)"
  type: string
  inputBinding:
    prefix: --alignment_tool
- id: in_db
  doc: 'specify path to CARD blast databases (default: None)'
  type: File
  inputBinding:
    prefix: --db
- id: in_software_version
  doc: Prints software number
  type: boolean
  inputBinding:
    prefix: --software_version
- id: in_data_version
  doc: Prints data version number
  type: boolean
  inputBinding:
    prefix: --data_version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output JSON file (default=Report)
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- rgi

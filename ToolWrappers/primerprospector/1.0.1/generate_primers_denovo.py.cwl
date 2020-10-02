class: CommandLineTool
id: generate_primers_denovo.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_exclude_fast_a
  doc: "Excluded aligned fasta file(s).  To pass multiple\nfiles, separate each file\
    \ with a colon.  Example: -e\ntest1.fasta:test2.fasta.  If not specified, will\
    \ skip\nexclusion step [default: none]"
  type: File
  inputBinding:
    prefix: --exclude_fasta
- id: in_percent_match
  doc: "Percentage of sequence matches to primer that must\nmatch in order to retain\
    \ prospective sequence in\ndictionary. [default: 0.6]"
  type: double
  inputBinding:
    prefix: --percent_match
- id: in_full_primer_length
  doc: "Overall primer length to retrieve from sequences.\n[default: 20]"
  type: long
  inputBinding:
    prefix: --full_primer_length
- id: in_x_mer_length
  doc: "Xmer length to search for in target fasta sequence(s).\n[default: 5]"
  type: long
  inputBinding:
    prefix: --xmer_length
- id: in_specificity_threshold
  doc: "Sets specificity threshold for excluded fasta\nsequences. [default: 0.01]"
  type: double
  inputBinding:
    prefix: --specificity_threshold
- id: in_log_file
  doc: "log filepath. If not specified, no log file will be\nwritten.  [default: none]"
  type: File
  inputBinding:
    prefix: --log_file
- id: in_standard_index_file
  doc: "Aligned sequence file with which to assign prospective\nprimer indices to.\
    \  The alignment where a conserved\nsequence is found will be used to determine\
    \ the\nunaligned index in the supplied file (for instance an\nE. coli sequence)\
    \ and will be recorded in the output\nfile for the purpose of giving a meaningful\
    \ name to\nprospective primers.  Only the first sequence in the\nfile will be\
    \ used for determining an index [default:\nnone]"
  type: File
  inputBinding:
    prefix: --standard_index_file
- id: in_search_range
  doc: "Range of nucleotides in the supplied aligned target\nsequences to search for\
    \ primers.  Supply the starting\nindex and end index separated by a colon.  Example\
    \ -r\n1500:2700  Enable this option to generate primers that\ntarget certain regions.\
    \ [default: none]"
  type: long
  inputBinding:
    prefix: --search_range
- id: in_target_seqs
  doc: "Target aligned fasta sequence files to find conserved\nsites for primer design.\
    \  Separate multiple files with\na colon. [REQUIRED]"
  type: string
  inputBinding:
    prefix: --target_seqs
- id: in_output_file_path
  doc: "name of output filepath to write details about\nconserved sequence sites.\
    \ [REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --output_filepath
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_standard_index_file
  doc: "Aligned sequence file with which to assign prospective\nprimer indices to.\
    \  The alignment where a conserved\nsequence is found will be used to determine\
    \ the\nunaligned index in the supplied file (for instance an\nE. coli sequence)\
    \ and will be recorded in the output\nfile for the purpose of giving a meaningful\
    \ name to\nprospective primers.  Only the first sequence in the\nfile will be\
    \ used for determining an index [default:\nnone]"
  type: File
  outputBinding:
    glob: $(inputs.in_standard_index_file)
- id: out_output_file_path
  doc: "name of output filepath to write details about\nconserved sequence sites.\
    \ [REQUIRED]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_path)
cwlVersion: v1.1
baseCommand:
- generate_primers_denovo.py

class: CommandLineTool
id: analyze_primers.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_primers_file_path
  doc: "Path to input primers file.  This file is tab\ndelineated, with the first\
    \ column being the primer\nname, which must end with an 'f' or a 'r'.  The second\n\
    column contains the primer sequence in 5' to  3'\nformat. One must supply either\
    \ a primer file or a\nprimer name  (-p parameter) and primer sequence (-s\nparameter).\
    \ [default: none]"
  type: File
  inputBinding:
    prefix: --primers_filepath
- id: in_primer_name
  doc: "Specify a single primer to analyze.  One can either\nspecify a single primer\
    \ that is listed in a primers\nfile (-P parameter) or  specify a sequence with\
    \ the -s\nparameter.  Primer name must end with a \"f\" or \"r\" to\ndesignate\
    \ orientation. [default: none]"
  type: File
  inputBinding:
    prefix: --primer_name
- id: in_primer_sequence
  doc: "Primer sequence if using the -p option.  Must be\nspecified if not passing\
    \ a primers file with the -P\noption.  If both -P and -p parameters are passed,\
    \ the\nsequence given with this option will be taken rather\nthan sequences in\
    \ the -P primers file. [default: none]"
  type: File
  inputBinding:
    prefix: --primer_sequence
- id: in_output_dir
  doc: "Specify output directory for hits files and primer\nsummary graphs. [default:\
    \ .]"
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_three_prime_len
  doc: "Length of primer considered to be part of the 3'\nregion for the purpose of\
    \ giving a weighted score for\nmismatches and/or gaps. [default: 5]"
  type: long
  inputBinding:
    prefix: --three_prime_len
- id: in_last_base_mismatch
  doc: "Sets penalty for mismatch in final base of 3' end of\nthe primer. [default:\
    \ 3]"
  type: long
  inputBinding:
    prefix: --last_base_mismatch
- id: in_three_prime_mismatch
  doc: "Penalty for all 3' mismatches except final\nbase.[default: 1]"
  type: long
  inputBinding:
    prefix: --three_prime_mismatch
- id: in_non_three_prime_mismatch
  doc: "Penalty for all non-3' mismatches. [default: 0.4]"
  type: double
  inputBinding:
    prefix: --non_three_prime_mismatch
- id: in_three_prime_gap
  doc: "Penalty for gaps in the 3' region of the primer.\n[default: 3]"
  type: long
  inputBinding:
    prefix: --three_prime_gap
- id: in_non_three_prime_gap
  doc: "Penalty for non 3' gaps. [default: 1]"
  type: long
  inputBinding:
    prefix: --non_three_prime_gap
- id: in_fast_a_seqs
  doc: "Target fasta file(s) to score input primer(s) against.\nSeparate multiple\
    \ files with a colon. [REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --fasta_seqs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Specify output directory for hits files and primer\nsummary graphs. [default:\
    \ .]"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- analyze_primers.py

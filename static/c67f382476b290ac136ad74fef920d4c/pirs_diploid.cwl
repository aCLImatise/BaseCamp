class: CommandLineTool
id: pirs_diploid.cwl
inputs:
- id: in_snp_rate
  doc: "A floating-point number in the interval [0, 1] that\nspecifies the heterozygous\
    \ SNP rate.  Default: 0.001"
  type: long?
  inputBinding:
    prefix: --snp-rate
- id: in_in_del_rate
  doc: "A floating-point number in the interval [0, 1] that\nspecifies the heterozygous\
    \ indel rate.\nDefault: 0.0001"
  type: long?
  inputBinding:
    prefix: --indel-rate
- id: in_sv_rate
  doc: "A floating-point number in the interval [0, 1] that\nspecifies the large-scale\
    \ structural variation\n(insertion, deletion, inversion) rate in the diploid\n\
    genome. Default: 0.000001"
  type: long?
  inputBinding:
    prefix: --sv-rate
- id: in_transition_to_transversion_ratio
  doc: "In a SNP, a transition is when a purine or pyrimidine\nis changed to one of\
    \ the same (A <=> G, C <=> T)\nwhile a transversion is when a purine is changed\n\
    into a pyrimidine or vice-versa.  This option\nspecifies a floating-point number\
    \ RATIO that gives\nthe ratio of the transition probability to the\ntransversion\
    \ probability for simulated SNPs.\nDefault: 2.0"
  type: long?
  inputBinding:
    prefix: --transition-to-transversion-ratio
- id: in_output_prefix
  doc: "Use PREFIX as the prefix of the output file and logs.\nDefault: \"pirs_diploid\""
  type: File?
  inputBinding:
    prefix: --output-prefix
- id: in_output_file
  doc: "Use FILE as the name of the output file. Use '-'\nfor standard output; this\
    \ also moves the\ninformational messages from stdout to stderr."
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_output_file_type
  doc: "The string \"text\" or \"gzip\" to specify the type of\nthe output FASTA file\
    \ containing the diploid copy\nof the genome, as well as the log files.\nDefault:\
    \ \"text\""
  type: File?
  inputBinding:
    prefix: --output-file-type
- id: in_no_logs
  doc: Do not write the log files.
  type: boolean?
  inputBinding:
    prefix: --no-logs
- id: in_random_seed
  doc: "Use SEED as the random seed. Default:\ntime(NULL) * getpid()"
  type: string?
  inputBinding:
    prefix: --random-seed
- id: in_quiet
  doc: Do not print informational messages.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_one_bp
  doc: 64.82%
  type: long
  inputBinding:
    position: 0
- id: in_two_bp
  doc: 17.17%
  type: long
  inputBinding:
    position: 1
- id: in_three_bp
  doc: 7.20%
  type: long
  inputBinding:
    position: 2
- id: in_four_bp
  doc: 7.29%
  type: long
  inputBinding:
    position: 3
- id: in_five_bp
  doc: 2.18%
  type: long
  inputBinding:
    position: 4
- id: in_six_bp
  doc: 1.34%
  type: long
  inputBinding:
    position: 5
- id: in_one_zero_zero_bp
  doc: 70%
  type: long
  inputBinding:
    position: 0
- id: in_two_zero_zero_bp
  doc: 20%
  type: long
  inputBinding:
    position: 1
- id: in_five_zero_zero_bp
  doc: 7%
  type: long
  inputBinding:
    position: 2
- id: in_one_zero_zero_zero_bp
  doc: 2%
  type: long
  inputBinding:
    position: 3
- id: in_two_zero_zero_zero_bp
  doc: 1%
  type: long
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prefix
  doc: "Use PREFIX as the prefix of the output file and logs.\nDefault: \"pirs_diploid\""
  type: File?
  outputBinding:
    glob: $(inputs.in_output_prefix)
- id: out_output_file
  doc: "Use FILE as the name of the output file. Use '-'\nfor standard output; this\
    \ also moves the\ninformational messages from stdout to stderr."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_file_type
  doc: "The string \"text\" or \"gzip\" to specify the type of\nthe output FASTA file\
    \ containing the diploid copy\nof the genome, as well as the log files.\nDefault:\
    \ \"text\""
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_type)
hints: []
cwlVersion: v1.1
baseCommand:
- pirs
- diploid

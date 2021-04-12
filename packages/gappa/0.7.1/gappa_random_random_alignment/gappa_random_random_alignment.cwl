class: CommandLineTool
id: gappa_random_random_alignment.cwl
inputs:
- id: in_sequence_count
  doc: "=0 REQUIRED\nNumber of sequences to create."
  type: long?
  inputBinding:
    prefix: --sequence-count
- id: in_sequence_length
  doc: "=0 REQUIRED\nLength of the sequences to create."
  type: long?
  inputBinding:
    prefix: --sequence-length
- id: in_characters
  doc: =-ACGT     Set of characters to use for the sequences.
  type: string?
  inputBinding:
    prefix: --characters
- id: in_out_dir
  doc: =.            Directory to write files to
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_file_prefix
  doc: File prefix for output files
  type: File?
  inputBinding:
    prefix: --file-prefix
- id: in_file_suffix
  doc: File suffix for output files
  type: File?
  inputBinding:
    prefix: --file-suffix
- id: in_write_fast_a
  doc: Write sequences to a fasta file.
  type: boolean?
  inputBinding:
    prefix: --write-fasta
- id: in_write_strict_phylip
  doc: ": --write-relaxed-phylip\nWrite sequences to a strict phylip file."
  type: File?
  inputBinding:
    prefix: --write-strict-phylip
- id: in_write_relaxed_phylip
  doc: ": --write-strict-phylip\nWrite sequences to a relaxed phylip file."
  type: File?
  inputBinding:
    prefix: --write-relaxed-phylip
- id: in_allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean?
  inputBinding:
    prefix: --allow-file-overwriting
- id: in_verbose
  doc: Produce more verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: =1            Number of threads to use for calculations.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_prefix
  doc: File prefix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_prefix)
- id: out_file_suffix
  doc: File suffix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_suffix)
- id: out_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gappa:0.7.1--he513fc3_0
cwlVersion: v1.1
baseCommand:
- gappa
- random
- random-alignment

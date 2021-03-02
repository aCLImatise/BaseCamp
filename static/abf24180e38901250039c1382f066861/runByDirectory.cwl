class: CommandLineTool
id: runByDirectory.cwl
inputs:
- id: in_num_threads
  doc: Number of threads (1)
  type: long?
  inputBinding:
    prefix: --num-threads
- id: in_output
  doc: Output file with sequence and read placement (output.txt)
  type: File?
  inputBinding:
    prefix: --output
- id: in_error_out
  doc: Output file with directories that failed (err_dirs.txt)
  type: File?
  inputBinding:
    prefix: --error-out
- id: in_keep_directories
  doc: Keep the individual gap directories (false)
  type: boolean?
  inputBinding:
    prefix: --keep-directories
- id: in_jumping_read_joining_run
  doc: This is a run to find short reversed jumping read inserts (false)
  type: boolean?
  inputBinding:
    prefix: --jumping-read-joining-run
- id: in_celera_terminator_directory
  doc: '*The location of the terminator directory for the Celera run'
  type: File?
  inputBinding:
    prefix: --Celera-terminator-directory
- id: in_max_nodes
  doc: Max nodes to use when closing gaps locally (200000)
  type: long?
  inputBinding:
    prefix: --max-nodes
- id: in_min_km_er_len
  doc: Minimum k-mer length used when closing gaps locally (17)
  type: long?
  inputBinding:
    prefix: --min-kmer-len
- id: in_max_km_er_len
  doc: Maximum k-mer length used when closing gaps locally (65)
  type: long?
  inputBinding:
    prefix: --max-kmer-len
- id: in_mean_for_faux_inserts
  doc: Mean specified when joining the ends of the contigs (500)
  type: long?
  inputBinding:
    prefix: --mean-for-faux-inserts
- id: in_join_aggressive
  doc: If set to 1 calls the pair joined if there is any path (as opposed to a unique
    path) (0)
  type: long?
  inputBinding:
    prefix: --join-aggressive
- id: in_stdev_for_faux_inserts
  doc: Standard deviation specified when joining the ends of the contigs (200)
  type: long?
  inputBinding:
    prefix: --stdev-for-faux-inserts
- id: in_num_stdev_s_allowed
  doc: Number of standard deviations the join length can be from the mean when trying
    to join a mate pair. (5)
  type: long?
  inputBinding:
    prefix: --num-stdevs-allowed
- id: in_mean_and_stdev_file
  doc: File with means and standard deviations for each gap
  type: File?
  inputBinding:
    prefix: --mean-and-stdev-file
- id: in_output_dir
  doc: The subdirectory to put the individual gaps into (.)
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_contig_end_sequence_file
  doc: '*Name of the file containing the contig end sequences for joining'
  type: File?
  inputBinding:
    prefix: --contig-end-sequence-file
- id: in_num_joins_per_directory
  doc: Number of joins put in each directory (1)
  type: long?
  inputBinding:
    prefix: --num-joins-per-directory
- id: in_skip_gaps
  doc: Number of gaps to skip -- useful for restarting (0)
  type: long?
  inputBinding:
    prefix: --skip-gaps
- id: in_dir_for_read_sequences
  doc: '*Name of dir where readFile.### exist; should be absolute'
  type: File?
  inputBinding:
    prefix: --dir-for-read-sequences
- id: in_cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file with sequence and read placement (output.txt)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_error_out
  doc: Output file with directories that failed (err_dirs.txt)
  type: File?
  outputBinding:
    glob: $(inputs.in_error_out)
hints: []
cwlVersion: v1.1
baseCommand:
- runByDirectory

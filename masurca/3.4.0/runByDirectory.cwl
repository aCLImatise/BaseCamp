class: CommandLineTool
id: runByDirectory.cwl
inputs:
- id: cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: num_threads
  doc: Number of threads (1)
  type: long
  inputBinding:
    prefix: --num-threads
- id: output
  doc: Output file with sequence and read placement (output.txt)
  type: File
  inputBinding:
    prefix: --output
- id: error_out
  doc: Output file with directories that failed (err_dirs.txt)
  type: File
  inputBinding:
    prefix: --error-out
- id: keep_directories
  doc: Keep the individual gap directories (false)
  type: boolean
  inputBinding:
    prefix: --keep-directories
- id: jumping_read_joining_run
  doc: This is a run to find short reversed jumping read inserts (false)
  type: boolean
  inputBinding:
    prefix: --jumping-read-joining-run
- id: celera_terminator_directory
  doc: '*The location of the terminator directory for the Celera run'
  type: File
  inputBinding:
    prefix: --Celera-terminator-directory
- id: max_nodes
  doc: Max nodes to use when closing gaps locally (200000)
  type: long
  inputBinding:
    prefix: --max-nodes
- id: min_km_er_len
  doc: Minimum k-mer length used when closing gaps locally (17)
  type: long
  inputBinding:
    prefix: --min-kmer-len
- id: max_km_er_len
  doc: Maximum k-mer length used when closing gaps locally (65)
  type: long
  inputBinding:
    prefix: --max-kmer-len
- id: mean_for_faux_inserts
  doc: Mean specified when joining the ends of the contigs (500)
  type: long
  inputBinding:
    prefix: --mean-for-faux-inserts
- id: join_aggressive
  doc: If set to 1 calls the pair joined if there is any path (as opposed to a unique
    path) (0)
  type: long
  inputBinding:
    prefix: --join-aggressive
- id: stdev_for_faux_inserts
  doc: Standard deviation specified when joining the ends of the contigs (200)
  type: long
  inputBinding:
    prefix: --stdev-for-faux-inserts
- id: num_stdev_s_allowed
  doc: Number of standard deviations the join length can be from the mean when trying
    to join a mate pair. (5)
  type: long
  inputBinding:
    prefix: --num-stdevs-allowed
- id: mean_and_stdev_file
  doc: File with means and standard deviations for each gap
  type: File
  inputBinding:
    prefix: --mean-and-stdev-file
- id: output_dir
  doc: The subdirectory to put the individual gaps into (.)
  type: File
  inputBinding:
    prefix: --output-dir
- id: contig_end_sequence_file
  doc: '*Name of the file containing the contig end sequences for joining'
  type: File
  inputBinding:
    prefix: --contig-end-sequence-file
- id: num_joins_per_directory
  doc: Number of joins put in each directory (1)
  type: long
  inputBinding:
    prefix: --num-joins-per-directory
- id: skip_gaps
  doc: Number of gaps to skip -- useful for restarting (0)
  type: long
  inputBinding:
    prefix: --skip-gaps
- id: dir_for_read_sequences
  doc: '*Name of dir where readFile.### exist; should be absolute'
  type: File
  inputBinding:
    prefix: --dir-for-read-sequences
outputs: []
cwlVersion: v1.1
baseCommand:
- runByDirectory

#!/usr/bin/env cwl-runner

baseCommand:
- runByDirectory
class: CommandLineTool
cwlVersion: v1.0
id: runbydirectory
inputs:
- doc: ''
  id: cmdline_parse
  inputBinding:
    position: 0
  type: string
- doc: Number of threads (1)
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: long
- doc: Output file with sequence and read placement (output.txt)
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Output file with directories that failed (err_dirs.txt)
  id: error_out
  inputBinding:
    prefix: --error-out
  type: File
- doc: Keep the individual gap directories (false)
  id: keep_directories
  inputBinding:
    prefix: --keep-directories
  type: boolean
- doc: This is a run to find short reversed jumping read inserts (false)
  id: jumping_read_joining_run
  inputBinding:
    prefix: --jumping-read-joining-run
  type: boolean
- doc: '*The location of the terminator directory for the Celera run'
  id: celera_terminator_directory
  inputBinding:
    prefix: --Celera-terminator-directory
  type: File
- doc: Max nodes to use when closing gaps locally (200000)
  id: max_nodes
  inputBinding:
    prefix: --max-nodes
  type: long
- doc: Minimum k-mer length used when closing gaps locally (17)
  id: min_km_er_len
  inputBinding:
    prefix: --min-kmer-len
  type: long
- doc: Maximum k-mer length used when closing gaps locally (65)
  id: max_km_er_len
  inputBinding:
    prefix: --max-kmer-len
  type: long
- doc: Mean specified when joining the ends of the contigs (500)
  id: mean_for_faux_inserts
  inputBinding:
    prefix: --mean-for-faux-inserts
  type: long
- doc: If set to 1 calls the pair joined if there is any path (as opposed to a unique
    path) (0)
  id: join_aggressive
  inputBinding:
    prefix: --join-aggressive
  type: long
- doc: Standard deviation specified when joining the ends of the contigs (200)
  id: stdev_for_faux_inserts
  inputBinding:
    prefix: --stdev-for-faux-inserts
  type: long
- doc: Number of standard deviations the join length can be from the mean when trying
    to join a mate pair. (5)
  id: num_stdev_s_allowed
  inputBinding:
    prefix: --num-stdevs-allowed
  type: long
- doc: File with means and standard deviations for each gap
  id: mean_and_stdev_file
  inputBinding:
    prefix: --mean-and-stdev-file
  type: File
- doc: The subdirectory to put the individual gaps into (.)
  id: output_dir
  inputBinding:
    prefix: --output-dir
  type: File
- doc: '*Name of the file containing the contig end sequences for joining'
  id: contig_end_sequence_file
  inputBinding:
    prefix: --contig-end-sequence-file
  type: File
- doc: Number of joins put in each directory (1)
  id: num_joins_per_directory
  inputBinding:
    prefix: --num-joins-per-directory
  type: long
- doc: Number of gaps to skip -- useful for restarting (0)
  id: skip_gaps
  inputBinding:
    prefix: --skip-gaps
  type: long
- doc: '*Name of dir where readFile.### exist; should be absolute'
  id: dir_for_read_sequences
  inputBinding:
    prefix: --dir-for-read-sequences
  type: File

class: CommandLineTool
id: megalodon_extras_calibrate_generate_variant_stats.cwl
inputs:
- id: in_guppy_config
  doc: "Guppy config. Default: dna_r9.4.1_450bps_modbases_dam-\ndcm-cpg_hac.cfg"
  type: double?
  inputBinding:
    prefix: --guppy-config
- id: in_guppy_server_path
  doc: "Path to guppy server executable. Default: ./ont-\nguppy/bin/guppy_basecall_server"
  type: File?
  inputBinding:
    prefix: --guppy-server-path
- id: in_guppy_server_port
  doc: 'Guppy server port. Default: Guppy auto'
  type: string?
  inputBinding:
    prefix: --guppy-server-port
- id: in_guppy_params
  doc: "Extra guppy server parameters. Main purpose for\noptimal performance based\
    \ on compute environment.\nQuote parameters to avoid them being parsed by\nmegalodon."
  type: string?
  inputBinding:
    prefix: --guppy-params
- id: in_guppy_timeout
  doc: "Timeout to wait for guppy server to call a single read\nin seconds. Default:\
    \ 5.000000"
  type: double?
  inputBinding:
    prefix: --guppy-timeout
- id: in_guppy_logs_output_directory
  doc: 'Directory to output guppy logs. Default: guppy_logs'
  type: Directory?
  inputBinding:
    prefix: --guppy-logs-output-directory
- id: in_reference
  doc: Reference FASTA file used for mapping called reads.
  type: File?
  inputBinding:
    prefix: --reference
- id: in_output
  doc: 'Filename to output statistics. Default:'
  type: File?
  inputBinding:
    prefix: --output
- id: in_read_ids_filename
  doc: "File containing read ids to process (one per line).\nDefault: All reads"
  type: File?
  inputBinding:
    prefix: --read-ids-filename
- id: in_devices
  doc: GPU devices for guppy or taiyaki basecalling backends.
  type: string[]
  inputBinding:
    prefix: --devices
- id: in_not_recursive
  doc: "Only search for fast5 read files directly found within\nthe fast5 directory.\
    \ Default: search recursively"
  type: boolean?
  inputBinding:
    prefix: --not-recursive
- id: in_processes
  doc: 'Number of parallel processes. Default: 1'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_suppress_progress
  doc: Suppress progress bar.
  type: boolean?
  inputBinding:
    prefix: --suppress-progress
- id: in_compute_false_reference_scores
  doc: "Compute scores given a false reference. Default:\ncompute all scores with\
    \ ground truth correct\nreference.***** Experimental feature, may contain bugs\n\
    *****.\n"
  type: boolean?
  inputBinding:
    prefix: --compute-false-reference-scores
- id: in_variant_calibration_statistics_dot_txt
  doc: --num-reads NUM_READS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_guppy_logs_output_directory
  doc: 'Directory to output guppy logs. Default: guppy_logs'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_guppy_logs_output_directory)
- id: out_output
  doc: 'Filename to output statistics. Default:'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- calibrate
- generate_variant_stats

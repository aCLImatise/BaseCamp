class: CommandLineTool
id: megalodon_extras_calibrate_generate_mod_stats_from_msf.cwl
inputs:
- id: in_motif
  doc: "['MOTIF', 'REL_POS'] ['MOTIF', 'REL_POS']\nMotif description. Motifs include\
    \ two values\nspecifying the sequence motif (may include ambiguity\ncodes) and\
    \ the relative modified position. Multiple\n`--motif` values may be provided."
  type: boolean?
  inputBinding:
    prefix: --motif
- id: in_edge_buffer
  doc: "Minimum distance from edge of read to output score.\nDefault: 30"
  type: long?
  inputBinding:
    prefix: --edge-buffer
- id: in_mod_context_bases
  doc: 'Context bases for modified base calling. Default: 15'
  type: long?
  inputBinding:
    prefix: --mod-context-bases
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
    \ 30.000000"
  type: double?
  inputBinding:
    prefix: --guppy-timeout
- id: in_guppy_logs_output_directory
  doc: 'Directory to output guppy logs. Default: guppy_logs'
  type: Directory?
  inputBinding:
    prefix: --guppy-logs-output-directory
- id: in_out_filename
  doc: "Output filename for modified base statistics. Should\nend in \"npz\". Default:\
    \ mod_calibration_statistics.npz"
  type: File?
  inputBinding:
    prefix: --out-filename
- id: in_log_filename
  doc: "Output filename for text summary. Default:\nmod_calibration_statistics.log"
  type: File?
  inputBinding:
    prefix: --log-filename
- id: in_modified_bases_set
  doc: "Only process these modified bases (single letter\ncodes). Present multiple\
    \ codes as a single string"
  type: string?
  inputBinding:
    prefix: --modified-bases-set
- id: in_num_reads
  doc: Total number of reads to process.
  type: long?
  inputBinding:
    prefix: --num-reads
- id: in_devices
  doc: GPU devices for guppy basecalling backend.
  type: string[]
  inputBinding:
    prefix: --devices
- id: in_processes
  doc: 'Number of parallel CPU processes. Default: 1'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_quiet
  doc: Suppress progress information.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_guppy_logs_output_directory
  doc: 'Directory to output guppy logs. Default: guppy_logs'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_guppy_logs_output_directory)
- id: out_out_filename
  doc: "Output filename for modified base statistics. Should\nend in \"npz\". Default:\
    \ mod_calibration_statistics.npz"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
- id: out_log_filename
  doc: "Output filename for text summary. Default:\nmod_calibration_statistics.log"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- calibrate
- generate_mod_stats_from_msf

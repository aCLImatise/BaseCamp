class: CommandLineTool
id: megalodon_extras_modified_bases_describe_alphabet.cwl
inputs:
- id: in_log_directory
  doc: "Directory to output megalodon log. Default: current\nworking directory."
  type: Directory?
  inputBinding:
    prefix: --log-directory
- id: in_guppy_config
  doc: "Guppy config. Default:\ndna_r9.4.1_450bps_modbases_5mc_hac.cfg"
  type: double?
  inputBinding:
    prefix: --guppy-config
- id: in_guppy_server_path
  doc: "Path to guppy server executable. Default: ./ont-\nguppy/bin/guppy_basecall_server"
  type: File?
  inputBinding:
    prefix: --guppy-server-path
- id: in_guppy_logs_output_directory
  doc: 'Directory to output guppy logs. Default: guppy_logs'
  type: Directory?
  inputBinding:
    prefix: --guppy-logs-output-directory
- id: in_do_not_use_guppy_server
  doc: "Use alternative basecalling backend. Either FAST5\n(default; requires --post_out\
    \ when running guppy) or\ntaiyaki (set `--taiyaki-model-filename` to use taiyaki\n\
    backend)."
  type: boolean?
  inputBinding:
    prefix: --do-not-use-guppy-server
- id: in_guppy_params
  doc: "Extra guppy server parameters. Main purpose for\noptimal performance based\
    \ on compute environment.\nQuote parameters to avoid them being parsed by\nmegalodon."
  type: string?
  inputBinding:
    prefix: --guppy-params
- id: in_fast_fives_dir
  doc: Directory containing raw fast5.
  type: long?
  inputBinding:
    prefix: --fast5s_dir
- id: in_tai_yaki_model_filename
  doc: "Taiyaki basecalling model checkpoint file.\n"
  type: File?
  inputBinding:
    prefix: --taiyaki-model-filename
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_directory
  doc: "Directory to output megalodon log. Default: current\nworking directory."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_log_directory)
- id: out_guppy_logs_output_directory
  doc: 'Directory to output guppy logs. Default: guppy_logs'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_guppy_logs_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.3.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- modified_bases
- describe_alphabet

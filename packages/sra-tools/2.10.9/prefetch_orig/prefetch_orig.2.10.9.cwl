class: CommandLineTool
id: prefetch_orig.2.10.9.cwl
inputs:
- id: in_type
  doc: 'Specify file type to download. Default: sra'
  type: File?
  inputBinding:
    prefix: --type
- id: in_transport
  doc: "Transport: one of: fasp; http; both\n[default]. (fasp only; http only; first\
    \ try\nfasp (ascp), use http if cannot download\nusing fasp)."
  type: string?
  inputBinding:
    prefix: --transport
- id: in_location
  doc: Location of data.
  type: string?
  inputBinding:
    prefix: --location
- id: in_min_size
  doc: "Minimum file size to download in KB\n(inclusive)."
  type: long?
  inputBinding:
    prefix: --min-size
- id: in_max_size
  doc: "Maximum file size to download in KB\n(exclusive). Default: 20G"
  type: long?
  inputBinding:
    prefix: --max-size
- id: in_force
  doc: "Force object download: one of: no, yes,\nall, ALL. no [default]: skip download\
    \ if the\nobject if found and complete; yes: download\nit even if it is found\
    \ and is complete; all:\nignore lock files (stale locks or it is\nbeing downloaded\
    \ by another process use\nat your own risk!); ALL: ignore lock files,\nrestart\
    \ download from beginning."
  type: string?
  inputBinding:
    prefix: --force
- id: in_resume
  doc: "Resume partial downloads: one of: no, yes\n[default]."
  type: string?
  inputBinding:
    prefix: --resume
- id: in_verify
  doc: "Verify after download one of: no, yes\n[default]."
  type: string?
  inputBinding:
    prefix: --verify
- id: in_progress
  doc: Show progress.
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_heartbeat
  doc: "Time period in minutes to display download\nprogress. (0: no progress), default:\
    \ 1"
  type: long?
  inputBinding:
    prefix: --heartbeat
- id: in_eliminate_quals
  doc: Don't download QUALITY column.
  type: boolean?
  inputBinding:
    prefix: --eliminate-quals
- id: in_check_all
  doc: Double-check all refseqs.
  type: boolean?
  inputBinding:
    prefix: --check-all
- id: in_order
  doc: "Kart prefetch order when downloading\nkart: one of: kart, size. (in kart order,\
    \ by\nfile size: smallest first), default: size."
  type: long?
  inputBinding:
    prefix: --order
- id: in_rows
  doc: "Kart rows to download (default all). Row\nlist should be ordered."
  type: string?
  inputBinding:
    prefix: --rows
- id: in_perm
  doc: PATH to jwt cart file.
  type: File?
  inputBinding:
    prefix: --perm
- id: in_ngc
  doc: PATH to ngc file.
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_cart
  doc: To read kart file.
  type: File?
  inputBinding:
    prefix: --cart
- id: in_ascp_path
  doc: "Path to ascp program and\nprivate key file (asperaweb_id_dsa.putty)"
  type: File?
  inputBinding:
    prefix: --ascp-path
- id: in_ascp_options
  doc: Arbitrary options to pass to ascp command
  type: string?
  inputBinding:
    prefix: --ascp-options
- id: in_output_directory
  doc: Save files to DIRECTORY/
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_line_dot
  doc: '-o|--output-file <FILE>          Write file to FILE when downloading '
  type: string
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'prefetch-orig.2.10.9 : 2.10.9'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Save files to DIRECTORY/
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0
cwlVersion: v1.1
baseCommand:
- prefetch-orig.2.10.9

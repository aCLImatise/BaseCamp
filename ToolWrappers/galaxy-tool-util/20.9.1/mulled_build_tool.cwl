class: CommandLineTool
id: mulled_build_tool.cwl
inputs:
- id: in_invo_lucro_path
  doc: Path to involucro (if not set will look in working directory and on PATH).
  type: File?
  inputBinding:
    prefix: --involucro-path
- id: in_dry_run
  doc: Just print commands instead of executing them.
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_verbose
  doc: Cause process to be verbose.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_singularity
  doc: Additionally build a singularity image.
  type: boolean?
  inputBinding:
    prefix: --singularity
- id: in_singularity_image_dir
  doc: Directory to write singularity images too.
  type: Directory?
  inputBinding:
    prefix: --singularity-image-dir
- id: in_namespace
  doc: quay.io namespace.
  type: string?
  inputBinding:
    prefix: --namespace
- id: in_repository_template
  doc: Docker repository target for publication (only quay.io or compat. API is currently
    supported).
  type: string?
  inputBinding:
    prefix: --repository_template
- id: in_channels
  doc: Comma separated list of target conda channels.
  type: string?
  inputBinding:
    prefix: --channels
- id: in_cond_a_version
  doc: Change to specified version of Conda before installing packages.
  type: string?
  inputBinding:
    prefix: --conda-version
- id: in_o_auth_token
  doc: If set, use this token when communicating with quay.io API.
  type: string?
  inputBinding:
    prefix: --oauth-token
- id: in_check_published
  doc: Override mulled image name - this is not recommended since metadata will not
    be detectable from the name of resulting images
  type: string?
  inputBinding:
    prefix: --check-published
- id: in_image_build
  doc: Build a versioned variant of this image.
  type: string?
  inputBinding:
    prefix: --image-build
- id: in_command
  doc: Command (build-and-test, build, all)
  type: string
  inputBinding:
    position: 0
- id: in_tool
  doc: Path to tool to build mulled image for.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0
cwlVersion: v1.1
baseCommand:
- mulled-build-tool

class: CommandLineTool
id: planemo_tool_init.cwl
inputs:
- id: in_id
  doc: Short identifier for new tool (no whitespace)
  type: string?
  inputBinding:
    prefix: --id
- id: in_force
  doc: Overwrite existing tool if present.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_tool
  doc: Output path for new tool (default is <id>.xml)
  type: File?
  inputBinding:
    prefix: --tool
- id: in_name
  doc: Name for new tool (user facing)
  type: string?
  inputBinding:
    prefix: --name
- id: in_description
  doc: Short description for new tool (user facing)
  type: string?
  inputBinding:
    prefix: --description
- id: in_command
  doc: "Command potentially including cheetah variables\n()(e.g. 'seqtk seq -a $input\
    \ > $output')"
  type: string?
  inputBinding:
    prefix: --command
- id: in_example_command
  doc: "Example to command with paths to build Cheetah\ntemplate from (e.g. 'seqtk\
    \ seq -a 2.fastq >\n2.fasta'). Option cannot be used with --command,\nshould be\
    \ used --example_input and\n--example_output."
  type: long?
  inputBinding:
    prefix: --example_command
- id: in_example_input
  doc: "For use with --example_command, replace input file\n(e.g. 2.fastq with a data\
    \ input parameter)."
  type: File?
  inputBinding:
    prefix: --example_input
- id: in_example_output
  doc: "For use with --example_command, replace input file\n(e.g. 2.fastq with a tool\
    \ output)."
  type: File?
  inputBinding:
    prefix: --example_output
- id: in_named_output
  doc: "Create a named output for use with command block\nfor example specify --named_output=output1.bam\
    \ and\nthen use '-o $output1' in your command block."
  type: long?
  inputBinding:
    prefix: --named_output
- id: in_input
  doc: An input description (e.g. input.fasta)
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "An output location (e.g. output.bam), the Galaxy\ndatatype is inferred from\
    \ the extension."
  type: string?
  inputBinding:
    prefix: --output
- id: in_help_text
  doc: Help text (reStructuredText)
  type: string?
  inputBinding:
    prefix: --help_text
- id: in_help_from_command
  doc: Auto populate help from supplied command.
  type: string?
  inputBinding:
    prefix: --help_from_command
- id: in_doi
  doc: "Supply a DOI (http://www.doi.org/) easing citation\nof the tool for Galxy\
    \ users (e.g. 10.1101/014043)."
  type: double?
  inputBinding:
    prefix: --doi
- id: in_cite_url
  doc: Supply a URL for citation.
  type: string?
  inputBinding:
    prefix: --cite_url
- id: in_test_case
  doc: "For use with --example_commmand, generate a tool\ntest case from the supplied\
    \ example."
  type: boolean?
  inputBinding:
    prefix: --test_case
- id: in_macros
  doc: Generate a macros.xml for reuse across many tools.
  type: boolean?
  inputBinding:
    prefix: --macros
- id: in_version_command
  doc: Command to print version (e.g. 'seqtk --version')
  type: string?
  inputBinding:
    prefix: --version_command
- id: in_requirement
  doc: "Add a tool requirement package (e.g. 'seqtk' or\n'seqtk@1.68')."
  type: double?
  inputBinding:
    prefix: --requirement
- id: in_container
  doc: Add a Docker image identifier for this tool.
  type: string?
  inputBinding:
    prefix: --container
- id: in_cwl
  doc: Build a CWL tool instead of a Galaxy tool.
  type: boolean?
  inputBinding:
    prefix: --cwl
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_tool
  doc: Output path for new tool (default is <id>.xml)
  type: File?
  outputBinding:
    glob: $(inputs.in_tool)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.2--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- tool_init

class: CommandLineTool
id: planemo_tool_init.cwl
inputs:
- id: id
  doc: Short identifier for new tool (no whitespace)
  type: string
  inputBinding:
    prefix: --id
- id: force
  doc: Overwrite existing tool if present.
  type: boolean
  inputBinding:
    prefix: --force
- id: tool
  doc: Output path for new tool (default is <id>.xml)
  type: File
  inputBinding:
    prefix: --tool
- id: name
  doc: Name for new tool (user facing)
  type: string
  inputBinding:
    prefix: --name
- id: description
  doc: Short description for new tool (user facing)
  type: string
  inputBinding:
    prefix: --description
- id: command
  doc: Command potentially including cheetah variables ()(e.g. 'seqtk seq -a $input
    > $output')
  type: string
  inputBinding:
    prefix: --command
- id: example_command
  doc: Example to command with paths to build Cheetah template from (e.g. 'seqtk seq
    -a 2.fastq > 2.fasta'). Option cannot be used with --command, should be used --example_input
    and --example_output.
  type: string
  inputBinding:
    prefix: --example_command
- id: example_input
  doc: For use with --example_command, replace input file (e.g. 2.fastq with a data
    input parameter).
  type: string
  inputBinding:
    prefix: --example_input
- id: example_output
  doc: For use with --example_command, replace input file (e.g. 2.fastq with a tool
    output).
  type: string
  inputBinding:
    prefix: --example_output
- id: named_output
  doc: Create a named output for use with command block for example specify --named_output=output1.bam
    and then use '-o $output1' in your command block.
  type: string
  inputBinding:
    prefix: --named_output
- id: input
  doc: An input description (e.g. input.fasta)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: An output location (e.g. output.bam), the Galaxy datatype is inferred from
    the extension.
  type: string
  inputBinding:
    prefix: --output
- id: help_text
  doc: Help text (reStructuredText)
  type: string
  inputBinding:
    prefix: --help_text
- id: help_from_command
  doc: Auto populate help from supplied command.
  type: string
  inputBinding:
    prefix: --help_from_command
- id: doi
  doc: Supply a DOI (http://www.doi.org/) easing citation of the tool for Galxy users
    (e.g. 10.1101/014043).
  type: string
  inputBinding:
    prefix: --doi
- id: cite_url
  doc: Supply a URL for citation.
  type: string
  inputBinding:
    prefix: --cite_url
- id: test_case
  doc: For use with --example_commmand, generate a tool test case from the supplied
    example.
  type: boolean
  inputBinding:
    prefix: --test_case
- id: macros
  doc: Generate a macros.xml for reuse across many tools.
  type: boolean
  inputBinding:
    prefix: --macros
- id: version_command
  doc: Command to print version (e.g. 'seqtk --version')
  type: string
  inputBinding:
    prefix: --version_command
- id: requirement
  doc: Add a tool requirement package (e.g. 'seqtk' or 'seqtk@1.68').
  type: string
  inputBinding:
    prefix: --requirement
- id: container
  doc: Add a Docker image identifier for this tool.
  type: string
  inputBinding:
    prefix: --container
- id: cwl
  doc: Build a CWL tool instead of a Galaxy tool.
  type: boolean
  inputBinding:
    prefix: --cwl
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- tool_init

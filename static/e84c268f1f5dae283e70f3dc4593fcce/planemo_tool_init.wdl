version 1.0

task PlanemoToolInit {
  input {
    String? id
    Boolean? force
    File? tool
    String? name
    String? description
    String? command_potentially_including
    Int? example_command
    File? example_input
    File? example_output
    Int? named_output
    String? input_description_eg
    String? output_location_eg
    String? help_text
    String? help_from_command
    Float? doi
    String? cite_url
    Boolean? test_case
    Boolean? macros
    String? version_command
    Float? requirement
    String? container
    Boolean? cwl
  }
  command <<<
    planemo tool_init \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(command_potentially_including) then ("--command " +  '"' + command_potentially_including + '"') else ""} \
      ~{if defined(example_command) then ("--example_command " +  '"' + example_command + '"') else ""} \
      ~{if defined(example_input) then ("--example_input " +  '"' + example_input + '"') else ""} \
      ~{if defined(example_output) then ("--example_output " +  '"' + example_output + '"') else ""} \
      ~{if defined(named_output) then ("--named_output " +  '"' + named_output + '"') else ""} \
      ~{if defined(input_description_eg) then ("--input " +  '"' + input_description_eg + '"') else ""} \
      ~{if defined(output_location_eg) then ("--output " +  '"' + output_location_eg + '"') else ""} \
      ~{if defined(help_text) then ("--help_text " +  '"' + help_text + '"') else ""} \
      ~{if defined(help_from_command) then ("--help_from_command " +  '"' + help_from_command + '"') else ""} \
      ~{if defined(doi) then ("--doi " +  '"' + doi + '"') else ""} \
      ~{if defined(cite_url) then ("--cite_url " +  '"' + cite_url + '"') else ""} \
      ~{if (test_case) then "--test_case" else ""} \
      ~{if (macros) then "--macros" else ""} \
      ~{if defined(version_command) then ("--version_command " +  '"' + version_command + '"') else ""} \
      ~{if defined(requirement) then ("--requirement " +  '"' + requirement + '"') else ""} \
      ~{if defined(container) then ("--container " +  '"' + container + '"') else ""} \
      ~{if (cwl) then "--cwl" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    id: "Short identifier for new tool (no whitespace)"
    force: "Overwrite existing tool if present."
    tool: "Output path for new tool (default is <id>.xml)"
    name: "Name for new tool (user facing)"
    description: "Short description for new tool (user facing)"
    command_potentially_including: "Command potentially including cheetah variables\\n()(e.g. 'seqtk seq -a $input > $output')"
    example_command: "Example to command with paths to build Cheetah\\ntemplate from (e.g. 'seqtk seq -a 2.fastq >\\n2.fasta'). Option cannot be used with --command,\\nshould be used --example_input and\\n--example_output."
    example_input: "For use with --example_command, replace input file\\n(e.g. 2.fastq with a data input parameter)."
    example_output: "For use with --example_command, replace input file\\n(e.g. 2.fastq with a tool output)."
    named_output: "Create a named output for use with command block\\nfor example specify --named_output=output1.bam and\\nthen use '-o $output1' in your command block."
    input_description_eg: "An input description (e.g. input.fasta)"
    output_location_eg: "An output location (e.g. output.bam), the Galaxy\\ndatatype is inferred from the extension."
    help_text: "Help text (reStructuredText)"
    help_from_command: "Auto populate help from supplied command."
    doi: "Supply a DOI (http://www.doi.org/) easing citation\\nof the tool for Galxy users (e.g. 10.1101/014043)."
    cite_url: "Supply a URL for citation."
    test_case: "For use with --example_commmand, generate a tool\\ntest case from the supplied example."
    macros: "Generate a macros.xml for reuse across many tools."
    version_command: "Command to print version (e.g. 'seqtk --version')"
    requirement: "Add a tool requirement package (e.g. 'seqtk' or\\n'seqtk@1.68')."
    container: "Add a Docker image identifier for this tool."
    cwl: "Build a CWL tool instead of a Galaxy tool."
  }
  output {
    File out_stdout = stdout()
    File out_tool = "${in_tool}"
  }
}
version 1.0

task Vep {
  input {
    Boolean? _inputfile_input
    File? _outputfile_output
    File? force_overwrite
    Boolean? species
    Boolean? everything
    Boolean? fork
  }
  command <<<
    vep \
      ~{if (_inputfile_input) then "-i" else ""} \
      ~{if (_outputfile_output) then "-o" else ""} \
      ~{if (force_overwrite) then "--force_overwrite" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (everything) then "--everything" else ""} \
      ~{if (fork) then "--fork" else ""}
  >>>
  parameter_meta {
    _inputfile_input: "| --input_file      Input file"
    _outputfile_output: "| --output_file     Output file"
    force_overwrite: "Force overwriting of output file"
    species: "[species]    Species to use [default: \\\"human\\\"]"
    everything: "Shortcut switch to turn on commonly used options. See web\\ndocumentation for details [default: off]"
    fork: "[num_forks]     Use forking to improve script runtime"
  }
  output {
    File out_stdout = stdout()
    File out__outputfile_output = "${in__outputfile_output}"
    File out_force_overwrite = "${in_force_overwrite}"
  }
}
version 1.0

task Vep {
  input {
    Boolean? _inputfile_input
    File? _outputfile_output
    File? force_overwrite
    Boolean? species
    Boolean? everything
    Boolean? fork
    String ensembl
    String ensembl_func_gen
    String ensembl_io
    String ensembl_variation
    String ensembl_vep
  }
  command <<<
    vep \
      ~{ensembl} \
      ~{ensembl_func_gen} \
      ~{ensembl_io} \
      ~{ensembl_variation} \
      ~{ensembl_vep} \
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
    ensembl: ": 100.171092c"
    ensembl_func_gen: ": 100.f0c3948"
    ensembl_io: ": 100.f87ae4f"
    ensembl_variation: ": 100.b220ff4"
    ensembl_vep: ": 100.3"
  }
  output {
    File out_stdout = stdout()
    File out__outputfile_output = "${in__outputfile_output}"
    File out_force_overwrite = "${in_force_overwrite}"
  }
}
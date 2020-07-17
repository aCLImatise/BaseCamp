version 1.0

task CheckStructure {
  input {
    String? input_structure_formats
    File? file_format
    String? sequence
    String? pdb_server
    String? cache_dir
    String? modeller_key
    String? res_lib
    String? data_lib
    String? output_structure_pdb
    String? json
    Boolean? quiet
    String? limit
    Boolean? debug
    Boolean? force_save
    Boolean? check_only
    Boolean? non_interactive
    String command_execute_help
    String options
  }
  command <<<
    check_structure \
      ~{command_execute_help} \
      ~{options} \
      ~{if defined(input_structure_formats) then ("--input " +  '"' + input_structure_formats + '"') else ""} \
      ~{if defined(file_format) then ("--file_format " +  '"' + file_format + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(pdb_server) then ("--pdb_server " +  '"' + pdb_server + '"') else ""} \
      ~{if defined(cache_dir) then ("--cache_dir " +  '"' + cache_dir + '"') else ""} \
      ~{if defined(modeller_key) then ("--modeller_key " +  '"' + modeller_key + '"') else ""} \
      ~{if defined(res_lib) then ("--res_lib " +  '"' + res_lib + '"') else ""} \
      ~{if defined(data_lib) then ("--data_lib " +  '"' + data_lib + '"') else ""} \
      ~{if defined(output_structure_pdb) then ("--output " +  '"' + output_structure_pdb + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--force_save" false="" force_save} \
      ~{true="--check_only" false="" check_only} \
      ~{true="--non_interactive" false="" non_interactive}
  >>>
  parameter_meta {
    input_structure_formats: "Input structure. Formats PDB|mmCIF. Remote pdb:{pdbid}"
    file_format: "Format for retrieving structures (default=mmCif|pdb|xml)"
    sequence: "Canonical sequence in FASTA format, pdb_chain[,chain] in header"
    pdb_server: "Server for retrieving structures (default|MMB)"
    cache_dir: "Path for structure's cache directory (default: ./tmpPDB)"
    modeller_key: "User key for modeller, required for backbone fix, register at https://salilab.org/modeller/registration.html"
    res_lib: "Override settings default residue library (AMBER prep format)"
    data_lib: "Override settings default data library"
    output_structure_pdb: "Output structure. Format PDB"
    json: "Summary checking results on a json file"
    quiet: "Reduces output, removing labels and progress info"
    limit: "Limit on number of atoms,0:nolimit"
    debug: "Add debug information"
    force_save: "Force saving an output file even if no modification"
    check_only: "Perform checks only, structure is not modified"
    non_interactive: "Do not prompt for missing parameters"
    command_execute_help: "Command to execute (help: check_structure commands)"
    options: "Specific command options"
  }
}
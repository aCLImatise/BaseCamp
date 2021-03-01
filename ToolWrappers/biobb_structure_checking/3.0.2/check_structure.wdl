version 1.0

task CheckStructure {
  input {
    File? input_structure_formats
    File? file_format
    File? sequence
    String? pdb_server
    File? cache_dir
    String? modeller_key
    File? res_lib
    File? data_lib
    File? output_structure_format
    File? json
    Boolean? quiet
    Int? limit
    Boolean? debug
    File? force_save
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
      ~{if defined(output_structure_format) then ("--output " +  '"' + output_structure_format + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (force_save) then "--force_save" else ""} \
      ~{if (check_only) then "--check_only" else ""} \
      ~{if (non_interactive) then "--non_interactive" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_structure_formats: "Input structure. Formats PDB|mmCIF. Remote pdb:{pdbid}"
    file_format: "Format for retrieving structures\\n(default=mmCif|pdb|xml)"
    sequence: "Canonical sequence in FASTA format, pdb_chain[,chain]\\nin header"
    pdb_server: "Server for retrieving structures (default|MMB)"
    cache_dir: "Path for structure's cache directory (default:\\n./tmpPDB)"
    modeller_key: "User key for modeller, required for backbone fix,\\nregister at\\nhttps://salilab.org/modeller/registration.html"
    res_lib: "Override settings default residue library (AMBER prep\\nformat)"
    data_lib: "Override settings default data library"
    output_structure_format: "Output structure. Format PDB"
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
  output {
    File out_stdout = stdout()
    File out_output_structure_format = "${in_output_structure_format}"
    File out_json = "${in_json}"
    File out_force_save = "${in_force_save}"
  }
}
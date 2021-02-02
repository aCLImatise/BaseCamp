class: CommandLineTool
id: check_structure.cwl
inputs:
- id: in_input
  doc: Input structure. Formats PDB|mmCIF. Remote pdb:{pdbid}
  type: File
  inputBinding:
    prefix: --input
- id: in_file_format
  doc: "Format for retrieving structures\n(default=mmCif|pdb|xml)"
  type: File
  inputBinding:
    prefix: --file_format
- id: in_sequence
  doc: "Canonical sequence in FASTA format, pdb_chain[,chain]\nin header"
  type: File
  inputBinding:
    prefix: --sequence
- id: in_pdb_server
  doc: Server for retrieving structures (default|MMB)
  type: string
  inputBinding:
    prefix: --pdb_server
- id: in_cache_dir
  doc: "Path for structure's cache directory (default:\n./tmpPDB)"
  type: File
  inputBinding:
    prefix: --cache_dir
- id: in_modeller_key
  doc: "User key for modeller, required for backbone fix,\nregister at\nhttps://salilab.org/modeller/registration.html"
  type: string
  inputBinding:
    prefix: --modeller_key
- id: in_res_lib
  doc: "Override settings default residue library (AMBER prep\nformat)"
  type: File
  inputBinding:
    prefix: --res_lib
- id: in_data_lib
  doc: Override settings default data library
  type: File
  inputBinding:
    prefix: --data_lib
- id: in_output
  doc: Output structure. Format PDB
  type: File
  inputBinding:
    prefix: --output
- id: in_json
  doc: Summary checking results on a json file
  type: File
  inputBinding:
    prefix: --json
- id: in_quiet
  doc: Reduces output, removing labels and progress info
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_limit
  doc: Limit on number of atoms,0:nolimit
  type: long
  inputBinding:
    prefix: --limit
- id: in_debug
  doc: Add debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_force_save
  doc: Force saving an output file even if no modification
  type: File
  inputBinding:
    prefix: --force_save
- id: in_check_only
  doc: Perform checks only, structure is not modified
  type: boolean
  inputBinding:
    prefix: --check_only
- id: in_non_interactive
  doc: Do not prompt for missing parameters
  type: boolean
  inputBinding:
    prefix: --non_interactive
- id: in_command
  doc: 'Command to execute (help: check_structure commands)'
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: Specific command options
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output structure. Format PDB
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_json
  doc: Summary checking results on a json file
  type: File
  outputBinding:
    glob: $(inputs.in_json)
- id: out_force_save
  doc: Force saving an output file even if no modification
  type: File
  outputBinding:
    glob: $(inputs.in_force_save)
cwlVersion: v1.1
baseCommand:
- check_structure

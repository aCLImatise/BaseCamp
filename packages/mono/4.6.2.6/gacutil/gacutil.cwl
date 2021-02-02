class: CommandLineTool
id: gacutil.cwl
inputs:
- id: in_installs_assembly_global
  doc: "[-check_refs] [-package NAME] [-root ROOTDIR] [-gacdir GACDIR]\nInstalls an\
    \ assembly into the global assembly cache.\n<assembly_path> is the name of the\
    \ file that contains the       assembly manifest\nExample: -i myDll.dll"
  type: File
  inputBinding:
    prefix: -i
- id: in_il
  doc: "[-check_refs] [-package NAME] [-root ROOTDIR] [-gacdir GACDIR]\nInstalls one\
    \ or more assemblies into the global assembly cache.\n<assembly_list_file> is\
    \ the path to a test file containing a list of\nassembly file paths on separate\
    \ lines.\nExample -il assembly_list.txt\nassembly_list.txt contents:\nassembly1.dll\n\
    assembly2.dll"
  type: File
  inputBinding:
    prefix: -il
- id: in_uninstalls_assembly_cacheassemblydisplayname
  doc: "[-package NAME] [-root ROOTDIR] [-gacdir GACDIR]\nUninstalls an assembly from\
    \ the global assembly cache.\n<assembly_display_name> is the name of the assembly\
    \ (partial or\nfully qualified) to remove from the global assembly cache. If a\n\
    partial name is specified all matching assemblies will be uninstalled.\nExample:\
    \ -u myDll,Version=1.2.1.0"
  type: double
  inputBinding:
    prefix: -u
- id: in_ul
  doc: "[-package NAME] [-root ROOTDIR] [-gacdir GACDIR]\nUninstalls one or more assemblies\
    \ from the global assembly cache.\n<assembly_list_file> is the path to a test\
    \ file containing a list of\nassembly names on separate lines.\nExample -ul assembly_list.txt\n\
    assembly_list.txt contents:\nassembly1,Version=1.0.0.0,Culture=en,PublicKeyToken=0123456789abcdef\n\
    assembly2,Version=2.0.0.0,Culture=en,PublicKeyToken=0123456789abcdef"
  type: File
  inputBinding:
    prefix: -ul
- id: in_us
  doc: "[-package NAME] [-root ROOTDIR] [-gacdir GACDIR]\nUninstalls an assembly using\
    \ the specifed assemblies full name.\n<assembly path> is the path to an assembly.\
    \ The full assembly name\nis retrieved from the specified assembly if there is\
    \ an assembly in\nthe GAC with a matching name, it is removed.\nExample: -us myDll.dll"
  type: File
  inputBinding:
    prefix: -us
- id: in_lists_contents_global
  doc: "[assembly_name] [-root ROOTDIR] [-gacdir GACDIR]\nLists the contents of the\
    \ global assembly cache.\nWhen the <assembly_name> parameter is specified only\
    \ matching\nassemblies are listed."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_package
  doc: "Used to create a directory in prefix/lib/mono with the name NAME, and a\n\
    symlink is created from NAME/assembly_name to the assembly on the GAC.\nThis is\
    \ used so developers can reference a set of libraries at once."
  type: Directory
  inputBinding:
    prefix: -package
- id: in_gac_dir
  doc: "Used to specify the GACs base directory. Once an assembly has been installed\n\
    to a non standard gacdir the MONO_GAC_PREFIX environment variable must be used\n\
    to access the assembly."
  type: Directory
  inputBinding:
    prefix: -gacdir
- id: in_root
  doc: "Used by developers integrating this with automake tools or packaging tools\n\
    that require a prefix directory to  be specified. The root represents the\n\"\
    libdir\" component of a prefix (typically prefix/lib)."
  type: Directory
  inputBinding:
    prefix: -root
- id: in_check_refs
  doc: "Used to ensure that the assembly being installed into the GAC does not\nreference\
    \ any non strong named assemblies. Assemblies being installed to\nthe GAC should\
    \ not reference non strong named assemblies, however the is\nan optional check."
  type: boolean
  inputBinding:
    prefix: -check_refs
- id: in_mono_gacutil_ignores
  doc: "The Mono gacutil ignores the -f option to maintain commandline compatibility\
    \ with\nother gacutils. gacutil will always force the installation of a new assembly."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_referenceid_descriptionthe_mono
  doc: "<reference_id> <description>\nThe Mono gacutil has not implemented traced\
    \ references and will emit a warning\nwhen this option is used.\n"
  type: string
  inputBinding:
    prefix: -r
- id: in_commands
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gacutil

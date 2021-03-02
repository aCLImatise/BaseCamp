version 1.0

task Monodocer {
  input {
    Boolean? delete
    Boolean? exceptions
    String? specify_flag_alter
    Boolean? f_ignore_missing_types
    Boolean? fno_assembly_versions
    File? import_documentation_file
    Directory? lib
    String? library
    Directory? out
    Directory? search_dependent_assemblies
    String? since
    String? type
    String? drop_ns
    Boolean? n_types
    Boolean? preserve
    Boolean? multi_assembly
    String? api_style
    String generate_dot
    String asm
    String dep_asm
    String all
    String added
  }
  command <<<
    monodocer \
      ~{generate_dot} \
      ~{asm} \
      ~{dep_asm} \
      ~{all} \
      ~{added} \
      ~{if (delete) then "--delete" else ""} \
      ~{if (exceptions) then "--exceptions" else ""} \
      ~{if defined(specify_flag_alter) then ("-f " +  '"' + specify_flag_alter + '"') else ""} \
      ~{if (f_ignore_missing_types) then "--fignore-missing-types" else ""} \
      ~{if (fno_assembly_versions) then "--fno-assembly-versions" else ""} \
      ~{if defined(import_documentation_file) then ("--import " +  '"' + import_documentation_file + '"') else ""} \
      ~{if defined(lib) then ("--lib " +  '"' + lib + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(search_dependent_assemblies) then ("-r " +  '"' + search_dependent_assemblies + '"') else ""} \
      ~{if defined(since) then ("--since " +  '"' + since + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(drop_ns) then ("--dropns " +  '"' + drop_ns + '"') else ""} \
      ~{if (n_types) then "--ntypes" else ""} \
      ~{if (preserve) then "--preserve" else ""} \
      ~{if (multi_assembly) then "--multiassembly" else ""} \
      ~{if defined(api_style) then ("--api-style " +  '"' + api_style + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    delete: "Delete removed members from the XML files."
    exceptions: "[=SOURCES] Document potential exceptions that members can"
    specify_flag_alter: "Specify a FLAG to alter behavior.  See later -f*\\noptions for available flags."
    f_ignore_missing_types: "Do not report an error if a --type=TYPE type\\nwas not found."
    fno_assembly_versions: "Do not generate //AssemblyVersion elements."
    import_documentation_file: "Import documentation from FILE."
    lib: "Check for assembly references in DIRECTORY."
    library: "Ignored for compatibility with update-ecma-xml."
    out: "Root DIRECTORY to generate/update documentation."
    search_dependent_assemblies: "Search for dependent assemblies in the directory\\ncontaining ASSEMBLY.\\n(Equivalent to '-L `dirname ASSEMBLY`'.)"
    since: "Manually specify the assembly VERSION that new\\nmembers were added in."
    type: "Only update documentation for TYPE."
    drop_ns: "When processing assembly ASSEMBLY, strip off\\nleading namespace PREFIX:\\ne.g. --dropns ASSEMBLY=PREFIX"
    n_types: "If the new assembly is switching to 'magic types',\\nthen this switch should be defined."
    preserve: "Do not delete members that don't exist in the\\nassembly, but rather mark them as preserved."
    multi_assembly: "Allow types to be in multiple assemblies."
    api_style: "Denotes the apistyle. Currently, only `classic`\\nand `unified` are supported. `classic` set of\\nassemblies should be run first, immediately\\nfollowed by 'unified' assemblies with the `\\ndropns` parameter."
    generate_dot: "SOURCES is a comma-separated list of:"
    asm: "Method calls in same assembly"
    dep_asm: "Method calls in dependent assemblies"
    all: "Record all possible exceptions"
    added: "Modifier; only create <exception/>s\\nfor NEW types/members"
  }
  output {
    File out_stdout = stdout()
  }
}
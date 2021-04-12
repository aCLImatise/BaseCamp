class: CommandLineTool
id: scalac.cwl
inputs:
- id: in_d_property
  doc: Pass -Dproperty=value directly to the runtime system.
  type: string?
  inputBinding:
    prefix: -Dproperty
- id: in_flag_pass_flag
  doc: <flag>                        Pass <flag> directly to the runtime system.
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_pluginopt_pass_option
  doc: :<plugin>:<opt>               Pass an option to a plugin
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_print_synopsis_advanced
  doc: Print a synopsis of advanced options.
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_boot_classpath
  doc: Override location of bootstrap class files.
  type: File?
  inputBinding:
    prefix: -bootclasspath
- id: in_classpath
  doc: Specify where to find user class files.
  type: File?
  inputBinding:
    prefix: -classpath
- id: in_destination_generated_classfiles
  doc: destination for generated classfiles.
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_dependency_file
  doc: Set dependency tracking file.
  type: File?
  inputBinding:
    prefix: -dependencyfile
- id: in_deprecation
  doc: Emit warning and location for usages of deprecated APIs.
  type: boolean?
  inputBinding:
    prefix: -deprecation
- id: in_encoding
  doc: Specify character encoding used by source files.
  type: string?
  inputBinding:
    prefix: -encoding
- id: in_explain_types
  doc: Explain type errors in more detail.
  type: boolean?
  inputBinding:
    prefix: -explaintypes
- id: in_ext_dirs
  doc: Override location of installed extensions.
  type: File?
  inputBinding:
    prefix: -extdirs
- id: in_feature
  doc: Emit warning and location for usages of features that should be imported explicitly.
  type: boolean?
  inputBinding:
    prefix: -feature
- id: in_level_set_level
  doc: :<level>                      Set level of generated debugging info. (none,source,line,vars,notailcalls)
    default:vars
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_java_boot_classpath
  doc: Override java boot classpath.
  type: File?
  inputBinding:
    prefix: -javabootclasspath
- id: in_java_ext_dirs
  doc: Override java extdirs classpath.
  type: File?
  inputBinding:
    prefix: -javaextdirs
- id: in_language
  doc: ":<_,feature,-feature>  Enable or disable language features: `_' for all, `-language:help'\
    \ to list"
  type: boolean?
  inputBinding:
    prefix: -language
- id: in_no_specialization
  doc: Ignore @specialize annotations.
  type: boolean?
  inputBinding:
    prefix: -no-specialization
- id: in_no_boot_cp
  doc: Do not use the boot classpath for the scala jars.
  type: boolean?
  inputBinding:
    prefix: -nobootcp
- id: in_nowarn
  doc: Generate no warnings.
  type: boolean?
  inputBinding:
    prefix: -nowarn
- id: in_optimise
  doc: Generates faster bytecode by applying optimisations to the program
  type: boolean?
  inputBinding:
    prefix: -optimise
- id: in_print
  doc: Print program with Scala-specific features removed.
  type: boolean?
  inputBinding:
    prefix: -print
- id: in_sourcepath
  doc: Specify location(s) of source files.
  type: File?
  inputBinding:
    prefix: -sourcepath
- id: in_target
  doc: :<target>                Target platform for object files. All JVM 1.5 targets
    are deprecated. (jvm-1.5,jvm-1.6,jvm-1.7,jvm-1.8) default:jvm-1.6
  type: boolean?
  inputBinding:
    prefix: -target
- id: in_tool_cp
  doc: Add to the runner classpath.
  type: File?
  inputBinding:
    prefix: -toolcp
- id: in_unchecked
  doc: Enable additional warnings where generated code depends on assumptions.
  type: boolean?
  inputBinding:
    prefix: -unchecked
- id: in_uniqid
  doc: Uniquely tag all identifiers in debugging output.
  type: boolean?
  inputBinding:
    prefix: -uniqid
- id: in_use_java_cp
  doc: Utilize the java.class.path in classpath resolution.
  type: boolean?
  inputBinding:
    prefix: -usejavacp
- id: in_use_manifest_cp
  doc: Utilize the manifest in classpath resolution.
  type: boolean?
  inputBinding:
    prefix: -usemanifestcp
- id: in_verbose
  doc: Output messages about what the compiler is doing.
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_version
  doc: Print product version and exit.
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_source_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scalac

class: CommandLineTool
id: scaladoc.cwl
inputs:
- id: in_author
  doc: Include authors.
  type: boolean
  inputBinding:
    prefix: -author
- id: in_diagrams
  doc: Create inheritance diagrams for classes, traits and packages.
  type: boolean
  inputBinding:
    prefix: -diagrams
- id: in_diagrams_dot_path
  doc: 'The path to the dot executable used to generate the inheritance diagrams.
    Eg: /usr/bin/dot'
  type: File
  inputBinding:
    prefix: -diagrams-dot-path
- id: in_diagrams_dot_restart
  doc: 'The number of times to restart a malfunctioning dot process before disabling
    diagrams (default: 5)'
  type: long
  inputBinding:
    prefix: -diagrams-dot-restart
- id: in_diagrams_dot_timeout
  doc: 'The timeout before the graphviz dot util is forcefully closed, in seconds
    (default: 10)'
  type: long
  inputBinding:
    prefix: -diagrams-dot-timeout
- id: in_diagrams_max_classes
  doc: The maximum number of superclasses or subclasses to show in a diagram
  type: long
  inputBinding:
    prefix: -diagrams-max-classes
- id: in_diagrams_max_implicit_s
  doc: The maximum number of implicitly converted classes to show in a diagram
  type: long
  inputBinding:
    prefix: -diagrams-max-implicits
- id: in_doc_external_doc
  doc: :<external-doc>            comma-separated list of classpath_entry_path#doc_URL
    pairs describing external dependencies.
  type: boolean
  inputBinding:
    prefix: -doc-external-doc
- id: in_doc_footer
  doc: A footer on every Scaladoc page, by default the EPFL/Lightbend copyright notice.
    Can be overridden with a custom footer.
  type: string
  inputBinding:
    prefix: -doc-footer
- id: in_doc_format
  doc: :<format>                        Selects in which format documentation is rendered
    (html) default:html
  type: boolean
  inputBinding:
    prefix: -doc-format
- id: in_doc_generator
  doc: The fully qualified name of a doclet class, which will be used to generate
    the documentation
  type: string
  inputBinding:
    prefix: -doc-generator
- id: in_doc_no_compile
  doc: A directory containing sources which should be parsed, no more (e.g. AnyRef.scala)
  type: File
  inputBinding:
    prefix: -doc-no-compile
- id: in_doc_root_content
  doc: The file from which the root package documentation should be imported.
  type: File
  inputBinding:
    prefix: -doc-root-content
- id: in_doc_source_url
  doc: 'A URL pattern used to link to the source file; the following variables are
    available: ?{TPL_NAME}, ?{TPL_OWNER} and respectively ?{FILE_PATH}. For example,
    for `scala.collection.Seq`, the variables will be expanded to `Seq`, `scala.collection`
    and respectively `scala/collection/Seq` (without the backquotes). To obtain a
    relative path for ?{FILE_PATH} instead of an absolute one, use the -sourcepath
    setting.'
  type: File
  inputBinding:
    prefix: -doc-source-url
- id: in_doc_title
  doc: The overall name of the Scaladoc site
  type: string
  inputBinding:
    prefix: -doc-title
- id: in_doc_version
  doc: An optional version number, to be appended to the title
  type: long
  inputBinding:
    prefix: -doc-version
- id: in_expand_all_types
  doc: Expand all type aliases and abstract types into full template pages. (locally
    this can be done with the @template annotation)
  type: boolean
  inputBinding:
    prefix: -expand-all-types
- id: in_groups
  doc: Group similar functions together (based on the @group annotation)
  type: boolean
  inputBinding:
    prefix: -groups
- id: in_implicit_s
  doc: Document members inherited by implicit conversions.
  type: boolean
  inputBinding:
    prefix: -implicits
- id: in_implicit_s_hide
  doc: :<implicit(s)>               Hide the members inherited by the given comma
    separated, fully qualified implicit conversions. Add dot (.) to include default
    conversions.
  type: boolean
  inputBinding:
    prefix: -implicits-hide
- id: in_implicit_s_show_all
  doc: Show members inherited by implicit conversions that are impossible in the default
    scope. (for example conversions that require Numeric[String] to be in scope)
  type: boolean
  inputBinding:
    prefix: -implicits-show-all
- id: in_implicit_s_sound_shadowing
  doc: "Use a sound implicit shadowing calculation. Note: this interacts badly with\
    \ usecases, so only use it if you haven't defined usecase for implicitly inherited\
    \ members."
  type: boolean
  inputBinding:
    prefix: -implicits-sound-shadowing
- id: in_no_link_warnings
  doc: Avoid warnings for ambiguous and incorrect links.
  type: boolean
  inputBinding:
    prefix: -no-link-warnings
- id: in_no_prefixes
  doc: Prevents generating prefixes in types, possibly creating ambiguous references,
    but significantly speeding up scaladoc.
  type: boolean
  inputBinding:
    prefix: -no-prefixes
- id: in_raw_output
  doc: For each html file, create another .html.raw file containing only the text.
    (can be used for quickly diffing two scaladoc outputs)
  type: boolean
  inputBinding:
    prefix: -raw-output
- id: in_skip_packages
  doc: <<package1>:...:<packageN>>  A colon-delimited list of fully qualified package
    names that will be skipped from scaladoc.
  type: boolean
  inputBinding:
    prefix: -skip-packages
- id: in_diagrams_debug
  doc: Show debugging information for the diagram creation process.
  type: boolean
  inputBinding:
    prefix: -diagrams-debug
- id: in_implicit_s_debug
  doc: Show debugging information for members inherited by implicit conversions.
  type: boolean
  inputBinding:
    prefix: -implicits-debug
- id: in_d_property
  doc: Pass -Dproperty=value directly to the runtime system.
  type: string
  inputBinding:
    prefix: -Dproperty
- id: in_flag_pass_flag
  doc: <flag>                        Pass <flag> directly to the runtime system.
  type: boolean
  inputBinding:
    prefix: -J
- id: in_pluginopt_pass_option
  doc: :<plugin>:<opt>               Pass an option to a plugin
  type: boolean
  inputBinding:
    prefix: -P
- id: in_print_synopsis_advanced
  doc: Print a synopsis of advanced options.
  type: boolean
  inputBinding:
    prefix: -X
- id: in_boot_classpath
  doc: Override location of bootstrap class files.
  type: File
  inputBinding:
    prefix: -bootclasspath
- id: in_classpath
  doc: Specify where to find user class files.
  type: File
  inputBinding:
    prefix: -classpath
- id: in_destination_generated_classfiles
  doc: destination for generated classfiles.
  type: Directory
  inputBinding:
    prefix: -d
- id: in_dependency_file
  doc: Set dependency tracking file.
  type: File
  inputBinding:
    prefix: -dependencyfile
- id: in_deprecation
  doc: Emit warning and location for usages of deprecated APIs.
  type: boolean
  inputBinding:
    prefix: -deprecation
- id: in_encoding
  doc: Specify character encoding used by source files.
  type: string
  inputBinding:
    prefix: -encoding
- id: in_explain_types
  doc: Explain type errors in more detail.
  type: boolean
  inputBinding:
    prefix: -explaintypes
- id: in_ext_dirs
  doc: Override location of installed extensions.
  type: File
  inputBinding:
    prefix: -extdirs
- id: in_feature
  doc: Emit warning and location for usages of features that should be imported explicitly.
  type: boolean
  inputBinding:
    prefix: -feature
- id: in_level_set_level
  doc: :<level>                      Set level of generated debugging info. (none,source,line,vars,notailcalls)
    default:vars
  type: boolean
  inputBinding:
    prefix: -g
- id: in_java_boot_classpath
  doc: Override java boot classpath.
  type: File
  inputBinding:
    prefix: -javabootclasspath
- id: in_java_ext_dirs
  doc: Override java extdirs classpath.
  type: File
  inputBinding:
    prefix: -javaextdirs
- id: in_language
  doc: ":<_,feature,-feature>  Enable or disable language features: `_' for all, `-language:help'\
    \ to list"
  type: boolean
  inputBinding:
    prefix: -language
- id: in_no_specialization
  doc: Ignore @specialize annotations.
  type: boolean
  inputBinding:
    prefix: -no-specialization
- id: in_no_boot_cp
  doc: Do not use the boot classpath for the scala jars.
  type: boolean
  inputBinding:
    prefix: -nobootcp
- id: in_nowarn
  doc: Generate no warnings.
  type: boolean
  inputBinding:
    prefix: -nowarn
- id: in_optimise
  doc: Generates faster bytecode by applying optimisations to the program
  type: boolean
  inputBinding:
    prefix: -optimise
- id: in_print
  doc: Print program with Scala-specific features removed.
  type: boolean
  inputBinding:
    prefix: -print
- id: in_sourcepath
  doc: Specify location(s) of source files.
  type: File
  inputBinding:
    prefix: -sourcepath
- id: in_target
  doc: :<target>                Target platform for object files. All JVM 1.5 targets
    are deprecated. (jvm-1.5,jvm-1.6,jvm-1.7,jvm-1.8) default:jvm-1.6
  type: boolean
  inputBinding:
    prefix: -target
- id: in_tool_cp
  doc: Add to the runner classpath.
  type: File
  inputBinding:
    prefix: -toolcp
- id: in_unchecked
  doc: Enable additional warnings where generated code depends on assumptions.
  type: boolean
  inputBinding:
    prefix: -unchecked
- id: in_uniqid
  doc: Uniquely tag all identifiers in debugging output.
  type: boolean
  inputBinding:
    prefix: -uniqid
- id: in_use_java_cp
  doc: Utilize the java.class.path in classpath resolution.
  type: boolean
  inputBinding:
    prefix: -usejavacp
- id: in_use_manifest_cp
  doc: Utilize the manifest in classpath resolution.
  type: boolean
  inputBinding:
    prefix: -usemanifestcp
- id: in_verbose
  doc: Output messages about what the compiler is doing.
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_version
  doc: Print product version and exit.
  type: boolean
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
cwlVersion: v1.1
baseCommand:
- scaladoc

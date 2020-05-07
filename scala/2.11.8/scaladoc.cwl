class: CommandLineTool
id: scaladoc.cwl
inputs:
- id: source_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: author
  doc: Include authors.
  type: boolean
  inputBinding:
    prefix: -author
- id: diagrams
  doc: Create inheritance diagrams for classes, traits and packages.
  type: boolean
  inputBinding:
    prefix: -diagrams
- id: diagrams_dot_path
  doc: 'The path to the dot executable used to generate the inheritance diagrams.
    Eg: /usr/bin/dot'
  type: File
  inputBinding:
    prefix: -diagrams-dot-path
- id: diagrams_dot_restart
  doc: 'The number of times to restart a malfunctioning dot process before disabling
    diagrams (default: 5)'
  type: string
  inputBinding:
    prefix: -diagrams-dot-restart
- id: diagrams_dot_timeout
  doc: 'The timeout before the graphviz dot util is forcefully closed, in seconds
    (default: 10)'
  type: string
  inputBinding:
    prefix: -diagrams-dot-timeout
- id: diagrams_max_classes
  doc: The maximum number of superclasses or subclasses to show in a diagram
  type: string
  inputBinding:
    prefix: -diagrams-max-classes
- id: diagrams_max_implicit_s
  doc: The maximum number of implicitly converted classes to show in a diagram
  type: string
  inputBinding:
    prefix: -diagrams-max-implicits
- id: doc_external_doc
  doc: :<external-doc>            comma-separated list of classpath_entry_path#doc_URL
    pairs describing external dependencies.
  type: boolean
  inputBinding:
    prefix: -doc-external-doc
- id: doc_footer
  doc: A footer on every Scaladoc page, by default the EPFL/Lightbend copyright notice.
    Can be overridden with a custom footer.
  type: string
  inputBinding:
    prefix: -doc-footer
- id: doc_format
  doc: :<format>                        Selects in which format documentation is rendered
    (html) default:html
  type: boolean
  inputBinding:
    prefix: -doc-format
- id: doc_generator
  doc: The fully qualified name of a doclet class, which will be used to generate
    the documentation
  type: string
  inputBinding:
    prefix: -doc-generator
- id: doc_no_compile
  doc: A directory containing sources which should be parsed, no more (e.g. AnyRef.scala)
  type: File
  inputBinding:
    prefix: -doc-no-compile
- id: doc_root_content
  doc: The file from which the root package documentation should be imported.
  type: File
  inputBinding:
    prefix: -doc-root-content
- id: doc_source_url
  doc: 'A URL pattern used to link to the source file; the following variables are
    available: €{TPL_NAME}, €{TPL_OWNER} and respectively €{FILE_PATH}. For example,
    for `scala.collection.Seq`, the variables will be expanded to `Seq`, `scala.collection`
    and respectively `scala/collection/Seq` (without the backquotes). To obtain a
    relative path for €{FILE_PATH} instead of an absolute one, use the -sourcepath
    setting.'
  type: string
  inputBinding:
    prefix: -doc-source-url
- id: doc_title
  doc: The overall name of the Scaladoc site
  type: string
  inputBinding:
    prefix: -doc-title
- id: doc_version
  doc: An optional version number, to be appended to the title
  type: string
  inputBinding:
    prefix: -doc-version
- id: expand_all_types
  doc: Expand all type aliases and abstract types into full template pages. (locally
    this can be done with the @template annotation)
  type: boolean
  inputBinding:
    prefix: -expand-all-types
- id: groups
  doc: Group similar functions together (based on the @group annotation)
  type: boolean
  inputBinding:
    prefix: -groups
- id: implicit_s
  doc: Document members inherited by implicit conversions.
  type: boolean
  inputBinding:
    prefix: -implicits
- id: implicit_s_hide
  doc: :<implicit(s)>               Hide the members inherited by the given comma
    separated, fully qualified implicit conversions. Add dot (.) to include default
    conversions.
  type: boolean
  inputBinding:
    prefix: -implicits-hide
- id: implicit_s_show_all
  doc: Show members inherited by implicit conversions that are impossible in the default
    scope. (for example conversions that require Numeric[String] to be in scope)
  type: boolean
  inputBinding:
    prefix: -implicits-show-all
- id: implicit_s_sound_shadowing
  doc: "Use a sound implicit shadowing calculation. Note: this interacts badly with\
    \ usecases, so only use it if you haven't defined usecase for implicitly inherited\
    \ members."
  type: boolean
  inputBinding:
    prefix: -implicits-sound-shadowing
- id: no_link_warnings
  doc: Avoid warnings for ambiguous and incorrect links.
  type: boolean
  inputBinding:
    prefix: -no-link-warnings
- id: no_prefixes
  doc: Prevents generating prefixes in types, possibly creating ambiguous references,
    but significantly speeding up scaladoc.
  type: boolean
  inputBinding:
    prefix: -no-prefixes
- id: raw_output
  doc: For each html file, create another .html.raw file containing only the text.
    (can be used for quickly diffing two scaladoc outputs)
  type: boolean
  inputBinding:
    prefix: -raw-output
- id: skip_packages
  doc: <<package1>:...:<packageN>>  A colon-delimited list of fully qualified package
    names that will be skipped from scaladoc.
  type: boolean
  inputBinding:
    prefix: -skip-packages
- id: diagrams_debug
  doc: Show debugging information for the diagram creation process.
  type: boolean
  inputBinding:
    prefix: -diagrams-debug
- id: implicit_s_debug
  doc: Show debugging information for members inherited by implicit conversions.
  type: boolean
  inputBinding:
    prefix: -implicits-debug
outputs: []
cwlVersion: v1.1
baseCommand:
- scaladoc

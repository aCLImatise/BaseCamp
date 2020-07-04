version 1.0

task Scaladoc {
  input {
    Boolean? author
    Boolean? diagrams
    File? diagrams_dot_path
    String? diagrams_dot_restart
    String? diagrams_dot_timeout
    String? diagrams_max_classes
    String? diagrams_max_implicit_s
    Boolean? doc_external_doc
    String? doc_footer
    Boolean? doc_format
    String? doc_generator
    File? doc_no_compile
    File? doc_root_content
    String? doc_source_url
    String? doc_title
    String? doc_version
    Boolean? expand_all_types
    Boolean? groups
    Boolean? implicit_s
    Boolean? implicit_s_hide
    Boolean? implicit_s_show_all
    Boolean? implicit_s_sound_shadowing
    Boolean? no_link_warnings
    Boolean? no_prefixes
    Boolean? raw_output
    Boolean? skip_packages
    Boolean? diagrams_debug
    Boolean? implicit_s_debug
    String source_files
  }
  command <<<
    scaladoc \
      ~{source_files} \
      ~{true="-author" false="" author} \
      ~{true="-diagrams" false="" diagrams} \
      ~{if defined(diagrams_dot_path) then ("-diagrams-dot-path " +  '"' + diagrams_dot_path + '"') else ""} \
      ~{if defined(diagrams_dot_restart) then ("-diagrams-dot-restart " +  '"' + diagrams_dot_restart + '"') else ""} \
      ~{if defined(diagrams_dot_timeout) then ("-diagrams-dot-timeout " +  '"' + diagrams_dot_timeout + '"') else ""} \
      ~{if defined(diagrams_max_classes) then ("-diagrams-max-classes " +  '"' + diagrams_max_classes + '"') else ""} \
      ~{if defined(diagrams_max_implicit_s) then ("-diagrams-max-implicits " +  '"' + diagrams_max_implicit_s + '"') else ""} \
      ~{true="-doc-external-doc" false="" doc_external_doc} \
      ~{if defined(doc_footer) then ("-doc-footer " +  '"' + doc_footer + '"') else ""} \
      ~{true="-doc-format" false="" doc_format} \
      ~{if defined(doc_generator) then ("-doc-generator " +  '"' + doc_generator + '"') else ""} \
      ~{if defined(doc_no_compile) then ("-doc-no-compile " +  '"' + doc_no_compile + '"') else ""} \
      ~{if defined(doc_root_content) then ("-doc-root-content " +  '"' + doc_root_content + '"') else ""} \
      ~{if defined(doc_source_url) then ("-doc-source-url " +  '"' + doc_source_url + '"') else ""} \
      ~{if defined(doc_title) then ("-doc-title " +  '"' + doc_title + '"') else ""} \
      ~{if defined(doc_version) then ("-doc-version " +  '"' + doc_version + '"') else ""} \
      ~{true="-expand-all-types" false="" expand_all_types} \
      ~{true="-groups" false="" groups} \
      ~{true="-implicits" false="" implicit_s} \
      ~{true="-implicits-hide" false="" implicit_s_hide} \
      ~{true="-implicits-show-all" false="" implicit_s_show_all} \
      ~{true="-implicits-sound-shadowing" false="" implicit_s_sound_shadowing} \
      ~{true="-no-link-warnings" false="" no_link_warnings} \
      ~{true="-no-prefixes" false="" no_prefixes} \
      ~{true="-raw-output" false="" raw_output} \
      ~{true="-skip-packages" false="" skip_packages} \
      ~{true="-diagrams-debug" false="" diagrams_debug} \
      ~{true="-implicits-debug" false="" implicit_s_debug}
  >>>
  parameter_meta {
    author: "Include authors."
    diagrams: "Create inheritance diagrams for classes, traits and packages."
    diagrams_dot_path: "The path to the dot executable used to generate the inheritance diagrams. Eg: /usr/bin/dot"
    diagrams_dot_restart: "The number of times to restart a malfunctioning dot process before disabling diagrams (default: 5)"
    diagrams_dot_timeout: "The timeout before the graphviz dot util is forcefully closed, in seconds (default: 10)"
    diagrams_max_classes: "The maximum number of superclasses or subclasses to show in a diagram"
    diagrams_max_implicit_s: "The maximum number of implicitly converted classes to show in a diagram"
    doc_external_doc: ":<external-doc>            comma-separated list of classpath_entry_path#doc_URL pairs describing external dependencies."
    doc_footer: "A footer on every Scaladoc page, by default the EPFL/Lightbend copyright notice. Can be overridden with a custom footer."
    doc_format: ":<format>                        Selects in which format documentation is rendered (html) default:html"
    doc_generator: "The fully qualified name of a doclet class, which will be used to generate the documentation"
    doc_no_compile: "A directory containing sources which should be parsed, no more (e.g. AnyRef.scala)"
    doc_root_content: "The file from which the root package documentation should be imported."
    doc_source_url: "A URL pattern used to link to the source file; the following variables are available: €{TPL_NAME}, €{TPL_OWNER} and respectively €{FILE_PATH}. For example, for `scala.collection.Seq`, the variables will be expanded to `Seq`, `scala.collection` and respectively `scala/collection/Seq` (without the backquotes). To obtain a relative path for €{FILE_PATH} instead of an absolute one, use the -sourcepath setting."
    doc_title: "The overall name of the Scaladoc site"
    doc_version: "An optional version number, to be appended to the title"
    expand_all_types: "Expand all type aliases and abstract types into full template pages. (locally this can be done with the @template annotation)"
    groups: "Group similar functions together (based on the @group annotation)"
    implicit_s: "Document members inherited by implicit conversions."
    implicit_s_hide: ":<implicit(s)>               Hide the members inherited by the given comma separated, fully qualified implicit conversions. Add dot (.) to include default conversions."
    implicit_s_show_all: "Show members inherited by implicit conversions that are impossible in the default scope. (for example conversions that require Numeric[String] to be in scope)"
    implicit_s_sound_shadowing: "Use a sound implicit shadowing calculation. Note: this interacts badly with usecases, so only use it if you haven't defined usecase for implicitly inherited members."
    no_link_warnings: "Avoid warnings for ambiguous and incorrect links."
    no_prefixes: "Prevents generating prefixes in types, possibly creating ambiguous references, but significantly speeding up scaladoc."
    raw_output: "For each html file, create another .html.raw file containing only the text. (can be used for quickly diffing two scaladoc outputs)"
    skip_packages: "<<package1>:...:<packageN>>  A colon-delimited list of fully qualified package names that will be skipped from scaladoc."
    diagrams_debug: "Show debugging information for the diagram creation process."
    implicit_s_debug: "Show debugging information for members inherited by implicit conversions."
    source_files: ""
  }
}
version 1.0

task Monoapihtml {
  input {
    File? diff
    String? ignore
    String? ignore_added
    String? ignore_removed
    String? ignore_new
    Boolean? ignore_changes_parameter_names
    Boolean? ignore_changes_property_setters
    Boolean? ignore_changes_virtual
    Boolean? colorize
    Boolean? lax
    String reference_dot_xml
    String assembly_dot_xml
    String? diff_dot_html
  }
  command <<<
    mono_api_html \
      ~{reference_dot_xml} \
      ~{assembly_dot_xml} \
      ~{diff_dot_html} \
      ~{if defined(diff) then ("--diff " +  '"' + diff + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(ignore_added) then ("--ignore-added " +  '"' + ignore_added + '"') else ""} \
      ~{if defined(ignore_removed) then ("--ignore-removed " +  '"' + ignore_removed + '"') else ""} \
      ~{if defined(ignore_new) then ("--ignore-new " +  '"' + ignore_new + '"') else ""} \
      ~{if (ignore_changes_parameter_names) then "--ignore-changes-parameter-names" else ""} \
      ~{if (ignore_changes_property_setters) then "--ignore-changes-property-setters" else ""} \
      ~{if (ignore_changes_virtual) then "--ignore-changes-virtual" else ""} \
      ~{if (colorize) then "--colorize" else ""} \
      ~{if (lax) then "--lax" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    diff: "HTML diff file out output (omit for stdout)"
    ignore: "Ignore new, added, and removed members whose\\ndescription matches a given C# regular\\nexpression (see below)."
    ignore_added: "Ignore added members whose description matches a\\ngiven C# regular expression (see below)."
    ignore_removed: "Ignore removed members whose description matches a\\ngiven C# regular expression (see below)."
    ignore_new: "Ignore new namespaces and types whose description\\nmatches a given C# regular expression (see below)\\n."
    ignore_changes_parameter_names: "Ignore changes to parameter names for identically\\nprototyped methods."
    ignore_changes_property_setters: "Ignore adding setters to properties."
    ignore_changes_virtual: "Ignore changing non-`virtual` to `virtual` or\\nadding `override`."
    colorize: "[=VALUE]     Colorize HTML output"
    lax: "Ignore duplicate XML entries"
    reference_dot_xml: ""
    assembly_dot_xml: ""
    diff_dot_html: ""
  }
  output {
    File out_stdout = stdout()
    File out_diff = "${in_diff}"
  }
}
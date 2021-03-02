version 1.0

task Monodocs2html {
  input {
    Boolean? default_template
    File? ext
    File? force_update
    Directory? out
    String? default_template_dot
    String? with_version
    String directories_dot
    String mono_touch
    Int net_one_one
    Int net_three_zero
    Int net_four_zero
  }
  command <<<
    monodocs2html \
      ~{directories_dot} \
      ~{mono_touch} \
      ~{net_one_one} \
      ~{net_three_zero} \
      ~{net_four_zero} \
      ~{if (default_template) then "--default-template" else ""} \
      ~{if defined(ext) then ("--ext " +  '"' + ext + '"') else ""} \
      ~{if (force_update) then "--force-update" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(default_template_dot) then ("--default-template. " +  '"' + default_template_dot + '"') else ""} \
      ~{if defined(with_version) then ("--with-version " +  '"' + with_version + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    default_template: "Writes the default XSLT to stdout."
    ext: "The file EXTENSION to use for created files.  This\\ndefaults to \\\"html\\\"."
    force_update: "Always generate new files.  If not specified, will\\nonly generate a new file if the source .xml file\\nis newer than the current output file."
    out: "The DIRECTORY to place the generated files and"
    default_template_dot: "The .NET PROFILE to generate documentation for."
    with_version: "The assembly VERSION to generate documentation for.\\nThis allows display of a subset of types/\\nmembers that correspond to the given assembly\\nversion.  May be specified multiple times.  If\\nnot specified, all versions are displayed."
    directories_dot: "--template=FILE        An XSLT FILE to use to generate the created files."
    mono_touch: "net_1_0"
    net_one_one: "net_2_0"
    net_three_zero: "net_3_5"
    net_four_zero: "silverlight"
  }
  output {
    File out_stdout = stdout()
    File out_force_update = "${in_force_update}"
  }
}
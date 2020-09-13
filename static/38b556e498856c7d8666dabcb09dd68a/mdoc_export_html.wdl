version 1.0

task Mdocexporthtml {
  input {
    Boolean? default_template
    File? ext
    File? force_update
    Directory? out
    Boolean? default_template_dot
    Int? with_profile
    String? with_version
    String directories_dot
  }
  command <<<
    mdoc_export_html \
      ~{directories_dot} \
      ~{if (default_template) then "--default-template" else ""} \
      ~{if defined(ext) then ("--ext " +  '"' + ext + '"') else ""} \
      ~{if (force_update) then "--force-update" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (default_template_dot) then "--default-template." else ""} \
      ~{if defined(with_profile) then ("--with-profile " +  '"' + with_profile + '"') else ""} \
      ~{if defined(with_version) then ("--with-version " +  '"' + with_version + '"') else ""}
  >>>
  parameter_meta {
    default_template: "Writes the default XSLT to stdout."
    ext: "The file EXTENSION to use for created files.  This\\ndefaults to \\\"html\\\"."
    force_update: "Always generate new files.  If not specified, will\\nonly generate a new file if the source .xml file\\nis newer than the current output file."
    out: "The DIRECTORY to place the generated files and"
    default_template_dot: ""
    with_profile: "The .NET PROFILE to generate documentation for.\\nThis is equivalent to using --with-version for\\nall of the versions that a profile uses.  Valid\\nprofiles are:\\nmonotouch\\nnet_1_0\\nnet_1_1\\nnet_2_0\\nnet_3_0\\nnet_3_5\\nnet_4_0\\nsilverlight"
    with_version: "The assembly VERSION to generate documentation for.\\nThis allows display of a subset of types/\\nmembers that correspond to the given assembly\\nversion.  May be specified multiple times.  If\\nnot specified, all versions are displayed."
    directories_dot: "--template=FILE        An XSLT FILE to use to generate the created files."
  }
  output {
    File out_stdout = stdout()
    File out_force_update = "${in_force_update}"
  }
}
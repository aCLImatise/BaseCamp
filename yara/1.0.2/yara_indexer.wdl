version 1.0

task YaraIndexer {
  input {
    Boolean? version_check
    Boolean? verbose
    String? output_prefix
    String? tmp_dir
  }
  command <<<
    yara_indexer \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    verbose: "Displays verbose output."
    output_prefix: "Specify a filename prefix for the reference genome index. Default: use the filename prefix of the reference genome."
    tmp_dir: "Specify a temporary directory where to construct the index. Default: use the output directory."
  }
}
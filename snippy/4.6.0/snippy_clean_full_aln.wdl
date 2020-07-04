version 1.0

task SnippyCleanFullAln {
  input {
    Boolean? debug
    String? to
  }
  command <<<
    snippy-clean_full_aln \
      ~{true="--debug" false="" debug} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""}
  >>>
  parameter_meta {
    debug: "!      Output verbose debug info (default '0')."
    to: "Replacement char (default 'N')."
  }
}
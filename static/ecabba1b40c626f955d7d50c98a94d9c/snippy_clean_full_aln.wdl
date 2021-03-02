version 1.0

task SnippycleanFullAln {
  input {
    Boolean? debug
    String? to
  }
  command <<<
    snippy_clean_full_aln \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "!      Output verbose debug info (default '0')."
    to: "Replacement char (default 'N')."
  }
  output {
    File out_stdout = stdout()
  }
}
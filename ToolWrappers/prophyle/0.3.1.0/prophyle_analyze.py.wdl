version 1.0

task ProphyleAnalyzepy {
  input {
    String? use_stdin_multiple
    Boolean? statistics_use_computation
  }
  command <<<
    prophyle_analyze_py \
      ~{if defined(use_stdin_multiple) then ("-f " +  '"' + use_stdin_multiple + '"') else ""} \
      ~{if (statistics_use_computation) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_stdin_multiple: "Use '-' for stdin or multiple files with"
    statistics_use_computation: "['w', 'u', 'wl', 'ul']\\nStatistics to use for the computation of histograms: w\\n(default) => weighted assignments; u => unique\\nassignments, non-weighted; wl => weighted assignments,\\npropagated to leaves; ul => unique assignments,\\npropagated to leaves."
  }
  output {
    File out_stdout = stdout()
  }
}
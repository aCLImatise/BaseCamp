version 1.0

task ProphyleAnalyzepy {
  input {
    String? use_stdin_files
    Boolean? statistics_use_wdefault
  }
  command <<<
    prophyle_analyze_py \
      ~{if defined(use_stdin_files) then ("-f " +  '"' + use_stdin_files + '"') else ""} \
      ~{if (statistics_use_wdefault) then "-s" else ""}
  >>>
  parameter_meta {
    use_stdin_files: "Use '-' for stdin or multiple files with"
    statistics_use_wdefault: "['w', 'u', 'wl', 'ul']\\nStatistics to use for the computation of histograms: w\\n(default) => weighted assignments; u => unique\\nassignments, non-weighted; wl => weighted assignments,\\npropagated to leaves; ul => unique assignments,\\npropagated to leaves."
  }
  output {
    File out_stdout = stdout()
  }
}
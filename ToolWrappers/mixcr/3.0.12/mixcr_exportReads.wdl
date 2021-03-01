version 1.0

task MixcrExportReads {
  input {
    Boolean? verbose
    File? force_overwrite
    Boolean? no_warnings
    String scr
    String export_reads
    String export
    String input_do_tv_dj_ca
  }
  command <<<
    mixcr exportReads \
      ~{scr} \
      ~{export_reads} \
      ~{export} \
      ~{input_do_tv_dj_ca} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if (no_warnings) then "--no-warnings" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Verbose warning messages."
    force_overwrite: "Force overwrite of output file(s)."
    no_warnings: "Suppress all warning messages."
    scr: ""
    export_reads: ""
    export: ""
    input_do_tv_dj_ca: ""
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}
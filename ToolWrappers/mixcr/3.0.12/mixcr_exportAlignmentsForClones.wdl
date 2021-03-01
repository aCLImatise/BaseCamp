version 1.0

task MixcrExportAlignmentsForClones {
  input {
    Boolean? overwrite_if_required
    Boolean? verbose
    File? force_overwrite
    Boolean? no_warnings
    Boolean? id
    String scr
    String export_alignments_for_clones
    String? ids
  }
  command <<<
    mixcr exportAlignmentsForClones \
      ~{scr} \
      ~{export_alignments_for_clones} \
      ~{ids} \
      ~{if (overwrite_if_required) then "--overwrite-if-required" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if (no_warnings) then "--no-warnings" else ""} \
      ~{if (id) then "--id" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    overwrite_if_required: "Overwrite output file if it is corrupted or if it was generated from\\ndifferent input file or with different parameters. -f / --force-overwrite\\noverrides this option."
    verbose: "Verbose warning messages."
    force_overwrite: "Force overwrite of output file(s)."
    no_warnings: "Suppress all warning messages."
    id: ""
    scr: ""
    export_alignments_for_clones: ""
    ids: ""
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}
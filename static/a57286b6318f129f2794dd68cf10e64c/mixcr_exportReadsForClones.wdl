version 1.0

task MixcrExportReadsForClones {
  input {
    Boolean? verbose
    File? force_overwrite
    Boolean? no_warnings
    Boolean? separate
    Boolean? id
    Boolean? fs
    String scr
    String export_reads_for_clones
    String? ids
  }
  command <<<
    mixcr exportReadsForClones \
      ~{scr} \
      ~{export_reads_for_clones} \
      ~{ids} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if (no_warnings) then "--no-warnings" else ""} \
      ~{if (separate) then "--separate" else ""} \
      ~{if (id) then "--id" else ""} \
      ~{if (fs) then "-fs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Verbose warning messages."
    force_overwrite: "Force overwrite of output file(s)."
    no_warnings: "Suppress all warning messages."
    separate: "Create separate files for each clone. File or pair of '_R1'/'_R2' files, with\\n'_clnN' suffix, where N is clone index, will be created for each clone\\nindex.\\n"
    id: ""
    fs: ""
    scr: ""
    export_reads_for_clones: ""
    ids: ""
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}
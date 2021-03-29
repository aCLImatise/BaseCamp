version 1.0

task Removetrackpl {
  input {
    File? dir
    String? track_label
    Boolean? delete
    Boolean? quiet
  }
  command <<<
    remove_track_pl \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(track_label) then ("--trackLabel " +  '"' + track_label + '"') else ""} \
      ~{if (delete) then "--delete" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jbrowse:1.16.11--pl526hc9558a2_0"
  }
  parameter_meta {
    dir: "/to/data/dir\\nPath to the JBrowse data directory to operate on."
    track_label: "Track label(s) to delete. This option may be specified multiple\\ntimes to delete multiple tracks."
    delete: "In addition to removing the track configuration so that JBrowse will\\nnot display the track, delete the track data as well. Be careful!"
    quiet: "Do not print any progress messages.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task MakeTracksFile {
  input {
    Array[String] track_files
    String? out
    String? o
    String bed_file
    String etc_dot
  }
  command <<<
    make_tracks_file \
      ~{bed_file} \
      ~{etc_dot} \
      ~{if defined(track_files) then ("--trackFiles " +  '"' + track_files + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    track_files: "Files to use in for the tracks. The ending of the file is used to define the type of track. E.g. `.bw` for bigwig, `.bed` for bed etc. For a arcs or links file, the file ending recognized is `.arcs` or `.links` (default: None)"
    out: "file, -o output file File to save the tracks (default: None)"
    o: ""
    bed_file: ""
    etc_dot: ""
  }
}
version 1.0

task MakeTracksFile {
  input {
    Array[String] track_files
    File? out
    String? o
    File bed_file
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
  runtime {
    docker: "quay.io/biocontainers/pygenometracks:3.6--py_0"
  }
  parameter_meta {
    track_files: "Files to use in for the tracks. The ending of the file\\nis used to define the type of track. E.g. `.bw` for\\nbigwig, `.bed` for bed etc. For a arcs or links file,\\nthe file ending recognized is `.arcs` or `.links`\\n(default: None)"
    out: "file, -o output file\\nFile to save the tracks (default: None)"
    o: ""
    bed_file: ""
    etc_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}
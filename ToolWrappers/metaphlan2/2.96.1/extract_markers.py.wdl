version 1.0

task ExtractMarkerspy {
  input {
    String? ifn_markers
    String? mpa_pkl
  }
  command <<<
    extract_markers_py \
      ~{if defined(ifn_markers) then ("--ifn_markers " +  '"' + ifn_markers + '"') else ""} \
      ~{if defined(mpa_pkl) then ("--mpa_pkl " +  '"' + mpa_pkl + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ifn_markers: ""
    mpa_pkl: ""
  }
  output {
    File out_stdout = stdout()
  }
}
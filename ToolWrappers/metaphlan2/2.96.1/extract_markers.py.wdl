version 1.0

task ExtractMarkerspy {
  input {
    String? of_n_markers
    String? mpa_pkl
    String? ifn_markers
  }
  command <<<
    extract_markers_py \
      ~{if defined(of_n_markers) then ("--ofn_markers " +  '"' + of_n_markers + '"') else ""} \
      ~{if defined(mpa_pkl) then ("--mpa_pkl " +  '"' + mpa_pkl + '"') else ""} \
      ~{if defined(ifn_markers) then ("--ifn_markers " +  '"' + ifn_markers + '"') else ""}
  >>>
  parameter_meta {
    of_n_markers: ""
    mpa_pkl: ""
    ifn_markers: ""
  }
  output {
    File out_stdout = stdout()
  }
}
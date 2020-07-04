version 1.0

task ExtractMarkers.py {
  input {
    String? mpa_pkl
    String? ifn_markers
  }
  command <<<
    extract_markers.py \
      ~{if defined(mpa_pkl) then ("--mpa_pkl " +  '"' + mpa_pkl + '"') else ""} \
      ~{if defined(ifn_markers) then ("--ifn_markers " +  '"' + ifn_markers + '"') else ""}
  >>>
  parameter_meta {
    mpa_pkl: ""
    ifn_markers: ""
  }
}
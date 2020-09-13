version 1.0

task PvclientpyPvclientpy {
  input {
    String? ct
    String? structures
    String? out
    String? title
    Boolean? no_title
    String? shape
    Array[String] diff
    Array[String] range
    String pv_client_do_tpy
  }
  command <<<
    pvclient_py pvclient_py \
      ~{pv_client_do_tpy} \
      ~{if defined(ct) then ("--ct " +  '"' + ct + '"') else ""} \
      ~{if defined(structures) then ("--structures " +  '"' + structures + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (no_title) then "--no_title" else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(diff) then ("--diff " +  '"' + diff + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""}
  >>>
  parameter_meta {
    ct: "Connect-table secondary structure."
    structures: ""
    out: ""
    title: ""
    no_title: ""
    shape: "Chemical-probing data."
    diff: "<differenceFile.diff> [<upperColor> <lowerColor>\\n<upperThreshold> <lowerThreshold>] (repeat)"
    range: ""
    pv_client_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task FioBounds {
  input {
    Int? precision
    Boolean? no_explode
    Boolean? without_id
    Boolean? without_obj
    Boolean? no_rs
  }
  command <<<
    fio bounds \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if (no_explode) then "--no-explode" else ""} \
      ~{if (without_id) then "--without-id" else ""} \
      ~{if (without_obj) then "--without-obj" else ""} \
      ~{if (no_rs) then "--no-rs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    precision: "Decimal precision of coordinates."
    no_explode: "Explode collections into features (default: no)."
    without_id: "Print GeoJSON ids and bounding boxes together\\n(default: without)."
    without_obj: "Print GeoJSON objects and bounding boxes\\ntogether (default: without)."
    no_rs: "Use RS (0x1E) as a prefix for individual texts\\nin a sequence as per\\nhttp://tools.ietf.org/html/draft-ietf-json-text-\\nsequence-13 (default is False)."
  }
  output {
    File out_stdout = stdout()
  }
}
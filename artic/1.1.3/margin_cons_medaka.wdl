version 1.0

task MarginConsMedaka {
  input {
    String? depth
    String? quality
    String? masked
  }
  command <<<
    margin_cons_medaka \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(masked) then ("--masked " +  '"' + masked + '"') else ""}
  >>>
  parameter_meta {
    depth: "minimum depth to call a variant"
    quality: "minimum quality to call a variant"
    masked: "Regions to mask (contig:start-end,contig:start-end)"
  }
}
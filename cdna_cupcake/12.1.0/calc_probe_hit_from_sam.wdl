version 1.0

task CalcProbeHitFromSam.py {
  input {
    Boolean? gtf
    String? start_base
    String? end_base
    String? output_filename_default
    String calculate
    String probe
    String hit
    String from
    String sam
    String alignment
  }
  command <<<
    calc_probe_hit_from_sam.py \
      ~{calculate} \
      ~{probe} \
      ~{hit} \
      ~{from} \
      ~{sam} \
      ~{alignment} \
      ~{true="--gtf" false="" gtf} \
      ~{if defined(start_base) then ("--start_base " +  '"' + start_base + '"') else ""} \
      ~{if defined(end_base) then ("--end_base " +  '"' + end_base + '"') else ""} \
      ~{if defined(output_filename_default) then ("--output " +  '"' + output_filename_default + '"') else ""}
  >>>
  parameter_meta {
    gtf: "Input is GTF instead of SAM"
    start_base: "Start base is 0 or 1-based index"
    end_base: "End base is 0 or 1-based index"
    output_filename_default: "Output filename (default: stdout)"
    calculate: ""
    probe: ""
    hit: ""
    from: ""
    sam: ""
    alignment: ""
  }
}
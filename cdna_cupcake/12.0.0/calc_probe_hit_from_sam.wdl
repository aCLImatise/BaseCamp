version 1.0

task CalcProbeHitFromSam.py {
  input {
    Boolean gtfGtf
    Boolean startStartBase
    Boolean endEndBase
    String outputOutput
  }
  command <<<
    calc_probe_hit_from_sam.py \
      ~{true="--gtf" false="" gtfGtf} \
      ~{true="--start_base" false="" startStartBase} \
      ~{true="--end_base" false="" endEndBase} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}
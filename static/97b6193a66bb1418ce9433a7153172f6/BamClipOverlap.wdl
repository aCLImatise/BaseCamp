version 1.0

task BamClipOverlap {
  input {
    File? in
    File? out
    Boolean? overlap_mismatch_mapq
    Boolean? overlap_mismatch_remove
    Boolean? overlap_mismatch_base_q
    Boolean? overlap_mismatch_base_n
    Boolean? ignore_indels
    Boolean? verbose_mode_default
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BamClipOverlap \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-overlap_mismatch_mapq" false="" overlap_mismatch_mapq} \
      ~{true="-overlap_mismatch_remove" false="" overlap_mismatch_remove} \
      ~{true="-overlap_mismatch_baseq" false="" overlap_mismatch_base_q} \
      ~{true="-overlap_mismatch_basen" false="" overlap_mismatch_base_n} \
      ~{true="-ignore_indels" false="" ignore_indels} \
      ~{true="-v" false="" verbose_mode_default} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input bam file. Needs to be sorted by name."
    out: "Output bam file."
    overlap_mismatch_mapq: "Set mapping quality of pair to 0 if mismatch is found in overlapping reads. Default value: 'false'"
    overlap_mismatch_remove: "Remove pair if mismatch is found in overlapping reads. Default value: 'false'"
    overlap_mismatch_base_q: "Reduce base quality if mismatch is found in overlapping reads. Default value: 'false'"
    overlap_mismatch_base_n: "Set base to N if mismatch is found in overlapping reads. Default value: 'false'"
    ignore_indels: "Turn off indel detection in overlap. Default value: 'false'"
    verbose_mode_default: "Verbose mode. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}
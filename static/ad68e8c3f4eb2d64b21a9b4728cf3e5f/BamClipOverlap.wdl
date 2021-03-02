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
    Boolean? verbose_modedefault_value
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BamClipOverlap \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (overlap_mismatch_mapq) then "-overlap_mismatch_mapq" else ""} \
      ~{if (overlap_mismatch_remove) then "-overlap_mismatch_remove" else ""} \
      ~{if (overlap_mismatch_base_q) then "-overlap_mismatch_baseq" else ""} \
      ~{if (overlap_mismatch_base_n) then "-overlap_mismatch_basen" else ""} \
      ~{if (ignore_indels) then "-ignore_indels" else ""} \
      ~{if (verbose_modedefault_value) then "-v" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input bam file. Needs to be sorted by name."
    out: "Output bam file."
    overlap_mismatch_mapq: "Set mapping quality of pair to 0 if mismatch is found in overlapping reads.\\nDefault value: 'false'"
    overlap_mismatch_remove: "Remove pair if mismatch is found in overlapping reads.\\nDefault value: 'false'"
    overlap_mismatch_base_q: "Reduce base quality if mismatch is found in overlapping reads.\\nDefault value: 'false'"
    overlap_mismatch_base_n: "Set base to N if mismatch is found in overlapping reads.\\nDefault value: 'false'"
    ignore_indels: "Turn off indel detection in overlap.\\nDefault value: 'false'"
    verbose_modedefault_value: "Verbose mode.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}
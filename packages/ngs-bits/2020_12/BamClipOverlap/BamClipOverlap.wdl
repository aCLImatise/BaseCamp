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
    String? ref
    File? write_cram
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
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (write_cram) then "-write_cram" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in: "Input BAM/CRAM file. Needs to be sorted by name."
    out: "Output BAM file."
    overlap_mismatch_mapq: "Set mapping quality of pair to 0 if mismatch is found in overlapping reads.\\nDefault value: 'false'"
    overlap_mismatch_remove: "Remove pair if mismatch is found in overlapping reads.\\nDefault value: 'false'"
    overlap_mismatch_base_q: "Reduce base quality if mismatch is found in overlapping reads.\\nDefault value: 'false'"
    overlap_mismatch_base_n: "Set base to N if mismatch is found in overlapping reads.\\nDefault value: 'false'"
    ignore_indels: "Turn off indel detection in overlap.\\nDefault value: 'false'"
    verbose_modedefault_value: "Verbose mode.\\nDefault value: 'false'"
    ref: "Reference genome for CRAM support (mandatory if CRAM is used).\\nDefault value: ''"
    write_cram: "Writes a CRAM file as output.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_write_cram = "${in_write_cram}"
  }
}
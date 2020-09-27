version 1.0

task OverlapAlign {
  input {
    File? mandatory_path_seqstore
    File? mandatorym_path_overlaps
    String? process_reads_bgnid
    String? erate
    Boolean? partial
    String? memory
    String? threads
    Boolean? vt
  }
  command <<<
    overlapAlign \
      ~{if defined(mandatory_path_seqstore) then ("-S " +  '"' + mandatory_path_seqstore + '"') else ""} \
      ~{if defined(mandatorym_path_overlaps) then ("-O " +  '"' + mandatorym_path_overlaps + '"') else ""} \
      ~{if defined(process_reads_bgnid) then ("-r " +  '"' + process_reads_bgnid + '"') else ""} \
      ~{if defined(erate) then ("-erate " +  '"' + erate + '"') else ""} \
      ~{if (partial) then "-partial" else ""} \
      ~{if defined(memory) then ("-memory " +  '"' + memory + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if (vt) then "-Vt" else ""}
  >>>
  parameter_meta {
    mandatory_path_seqstore: "Mandatory, path to seqStore sequences."
    mandatorym_path_overlaps: "Mandatorym path to ovlStore overlaps."
    process_reads_bgnid: "[-endID]  Process reads bgnID to endID, inclusive."
    erate: "Overlaps are computed at 'e' fraction error; must be larger than the original erate"
    partial: "Overlaps are 'overlapInCore -S' partial overlaps"
    memory: "Use up to 'm' GB of memory"
    threads: "Use up to 'n' cores"
    vt: "Increase debug verbosity. -Vt increases only trimming; -Va increases only alignment."
  }
  output {
    File out_stdout = stdout()
  }
}
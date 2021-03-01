version 1.0

task PurgeHaplotigsClip {
  input {
    Boolean? primary
    File? out_prefix
    Boolean? length
    Boolean? gap
    Boolean? ratio
    Boolean? threads
    String? h
  }
  command <<<
    purge_haplotigs clip \
      ~{if (primary) then "-primary" else ""} \
      ~{if (out_prefix) then "-outPrefix" else ""} \
      ~{if (length) then "-length" else ""} \
      ~{if (gap) then "-gap" else ""} \
      ~{if (ratio) then "-ratio" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    primary: "Primary contigs (curated.fasta by default) from the 'purge' stage."
    out_prefix: "Output file prefix. DEFAULT = clip"
    length: "Minimum overlap length to trigger clipping. DEFAULT = 10000"
    gap: "Maximum end gap to allow clipping. DEFAULT = 10000"
    ratio: "Max allowable gap to alignment ratio. DEFAULT = 0.5"
    threads: "Threds to use. DEFAULT = 4"
    h: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_prefix = "${in_out_prefix}"
  }
}
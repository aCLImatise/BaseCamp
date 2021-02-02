version 1.0

task Transabyssmerge {
  input {
    Int? mink
    Int? max_k
    Array[String] prefixes
    Boolean? ss
    Boolean? force
    File? out
    Int? threads
    Int? length
    Boolean? no_cleanup
    Boolean? abyss_map
    Boolean? abyss_map_it_r
    Int? in_del
    Float? pid
  }
  command <<<
    transabyss_merge \
      ~{if defined(mink) then ("--mink " +  '"' + mink + '"') else ""} \
      ~{if defined(max_k) then ("--maxk " +  '"' + max_k + '"') else ""} \
      ~{if defined(prefixes) then ("--prefixes " +  '"' + prefixes + '"') else ""} \
      ~{if (ss) then "--SS" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (no_cleanup) then "--no-cleanup" else ""} \
      ~{if (abyss_map) then "--abyssmap" else ""} \
      ~{if (abyss_map_it_r) then "--abyssmap-itr" else ""} \
      ~{if defined(in_del) then ("--indel " +  '"' + in_del + '"') else ""} \
      ~{if defined(pid) then ("--pid " +  '"' + pid + '"') else ""}
  >>>
  parameter_meta {
    mink: "smallest k-mer size"
    max_k: "largest k-mer size"
    prefixes: "prefixes for the contigs from each assembly"
    ss: "assemblies are strand-specific"
    force: "force overwriting"
    out: "output file [/transabyss-merged.fa]"
    threads: "number of threads [1]"
    length: "shortest sequence to report [0]"
    no_cleanup: "do not remove intermediate files at completion"
    abyss_map: "use abyss-map to merge all FASTA files at once (NOTE:\\nfaster than BLAT but less sensitive and more memory\\nintensive)"
    abyss_map_it_r: "use abyss-map to merge one additional FASTA at a time,\\nutilizing less memory."
    in_del: "indel size tolerance [1]"
    pid: "minimum percent sequence identity of redundant\\nsequences [0.95]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}
version 1.0

task TransabyssMerge {
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
    transabyss-merge \
      ~{if defined(mink) then ("--mink " +  '"' + mink + '"') else ""} \
      ~{if defined(max_k) then ("--maxk " +  '"' + max_k + '"') else ""} \
      ~{if defined(prefixes) then ("--prefixes " +  '"' + prefixes + '"') else ""} \
      ~{true="--SS" false="" ss} \
      ~{true="--force" false="" force} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{true="--no-cleanup" false="" no_cleanup} \
      ~{true="--abyssmap" false="" abyss_map} \
      ~{true="--abyssmap-itr" false="" abyss_map_it_r} \
      ~{if defined(in_del) then ("--indel " +  '"' + in_del + '"') else ""} \
      ~{if defined(pid) then ("--pid " +  '"' + pid + '"') else ""}
  >>>
  parameter_meta {
    mink: "smallest k-mer size"
    max_k: "largest k-mer size"
    prefixes: "prefixes for the contigs from each assembly"
    ss: "assemblies are strand-specific"
    force: "force overwriting"
    out: "output file [/tmp/tmptu9me6eo/transabyss-merged.fa]"
    threads: "number of threads [1]"
    length: "shortest sequence to report [0]"
    no_cleanup: "do not remove intermediate files at completion"
    abyss_map: "use abyss-map to merge all FASTA files at once (NOTE: faster than BLAT but less sensitive and more memory intensive)"
    abyss_map_it_r: "use abyss-map to merge one additional FASTA at a time, utilizing less memory."
    in_del: "indel size tolerance [1]"
    pid: "minimum percent sequence identity of redundant sequences [0.95]"
  }
}
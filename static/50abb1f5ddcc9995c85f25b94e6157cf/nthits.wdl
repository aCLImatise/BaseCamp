version 1.0

task Nthits {
  input {
    String? threads
    String? km_er
    String? cut_off
    String? pref
    Boolean? out_bloom
    Boolean? solid
    String? option
  }
  command <<<
    nthits \
      ~{option} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(pref) then ("--pref " +  '"' + pref + '"') else ""} \
      ~{true="--outbloom" false="" out_bloom} \
      ~{true="--solid" false="" solid}
  >>>
  parameter_meta {
    threads: "use N parallel threads [16]"
    km_er: "the length of kmer [64]"
    cut_off: "the maximum coverage of kmer in output"
    pref: "the prefix for output file name [repeat]"
    out_bloom: "output the most frequent k-mers in a Bloom filter"
    solid: "output the solid k-mers (non-errornous k-mers)"
    option: ""
  }
}
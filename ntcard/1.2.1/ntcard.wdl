version 1.0

task Ntcard {
  input {
    String? threads
    String? km_er
    String? gap
    String? cov
    String? pref
    String? name_output_used
    String? option
  }
  command <<<
    ntcard \
      ~{option} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if defined(pref) then ("--pref " +  '"' + pref + '"') else ""} \
      ~{if defined(name_output_used) then ("--output " +  '"' + name_output_used + '"') else ""}
  >>>
  parameter_meta {
    threads: "use N parallel threads [1] (N>=2 should be used when input files are >=2)"
    km_er: "the length of kmer "
    gap: "the length of gap in the gap seed [0]. g mod 2 must equal k mod 2 unless g == 0 -g does not support multiple k currently."
    cov: "the maximum coverage of kmer in output [1000]"
    pref: "the prefix for output file name(s)"
    name_output_used: "the name for output file name (used when output should be a single file)"
    option: ""
  }
}
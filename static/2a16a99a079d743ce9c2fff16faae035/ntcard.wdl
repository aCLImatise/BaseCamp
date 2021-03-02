version 1.0

task Ntcard {
  input {
    Int? threads
    Int? km_er
    Int? gap
    Int? cov
    File? pref
    File? name_output_file
  }
  command <<<
    ntcard \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if defined(pref) then ("--pref " +  '"' + pref + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "use N parallel threads [1] (N>=2 should be used when input files are >=2)"
    km_er: "the length of kmer"
    gap: "the length of gap in the gap seed [0]. g mod 2 must equal k mod 2 unless g == 0"
    cov: "the maximum coverage of kmer in output [1000]"
    pref: "the prefix for output file name(s)"
    name_output_file: "the name for output file name (used when output should be a single file)"
  }
  output {
    File out_stdout = stdout()
    File out_pref = "${in_pref}"
    File out_name_output_file = "${in_name_output_file}"
  }
}
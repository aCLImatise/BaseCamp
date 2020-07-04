version 1.0

task Binning {
  input {
    String? dm
    Boolean? index_file_reads
    Boolean? number_of_reads
    String? nt
    String? lu
    String? ld
    String? rt
    String? size_bin
    String? to_l
  }
  command <<<
    binning \
      ~{if defined(dm) then ("-dM " +  '"' + dm + '"') else ""} \
      ~{true="-i" false="" index_file_reads} \
      ~{true="-n" false="" number_of_reads} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(lu) then ("-lu " +  '"' + lu + '"') else ""} \
      ~{if defined(ld) then ("-ld " +  '"' + ld + '"') else ""} \
      ~{if defined(rt) then ("-rt " +  '"' + rt + '"') else ""} \
      ~{if defined(size_bin) then ("-sizeBin " +  '"' + size_bin + '"') else ""} \
      ~{if defined(to_l) then ("-tol " +  '"' + to_l + '"') else ""}
  >>>
  parameter_meta {
    dm: "MAD processs (default enabled)"
    index_file_reads: "Index file with reads name"
    number_of_reads: "number of reads"
    nt: "of threads to use"
    lu: "of links to cut by UP threshold"
    ld: "of links to cut by Down threshold"
    rt: "FILE (comma delimted for several files)"
    size_bin: "of reads to report a bin (default 1)"
    to_l: "error tolerance (default 0.5) "
  }
}
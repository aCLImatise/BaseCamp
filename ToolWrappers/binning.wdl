version 1.0

task Binning {
  input {
    String? dm
    Boolean? index_file_reads
    Boolean? number_of_reads
    Int? nt
    Int? lu
    Int? ld
    File? rt
    Int? size_bin
    Float? to_l
  }
  command <<<
    binning \
      ~{if defined(dm) then ("-dM " +  '"' + dm + '"') else ""} \
      ~{if (index_file_reads) then "-i" else ""} \
      ~{if (number_of_reads) then "-n" else ""} \
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
    to_l: "error tolerance (default 0.5)"
  }
  output {
    File out_stdout = stdout()
  }
}
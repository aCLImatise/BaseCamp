version 1.0

task Cmph5toolspySort {
  input {
    File? outfile
    Boolean? deep
    Directory? tmpdir
    Boolean? use_python_indexer
    Boolean? in_place
  }
  command <<<
    cmph5tools_py sort \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if (deep) then "--deep" else ""} \
      ~{if defined(tmpdir) then ("--tmpDir " +  '"' + tmpdir + '"') else ""} \
      ~{if (use_python_indexer) then "--usePythonIndexer" else ""} \
      ~{if (in_place) then "--inPlace" else ""}
  >>>
  parameter_meta {
    outfile: "output filename"
    deep: "whether a deep sorting should be conducted, i.e. sort\\ntheAlignmentArrays [False]"
    tmpdir: "temporary directory to use when sorting in-place [/tmp]"
    use_python_indexer: "Whether to use native indexing [False]."
    in_place: "Whether to make a temporary copy of the original cmp.h5\\nfile before sorting.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}
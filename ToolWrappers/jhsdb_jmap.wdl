version 1.0

task JhsdbJmap {
  input {
    Boolean? heap
    Boolean? binary_heap
    Boolean? dumpfile
    Boolean? histo
    Boolean? cl_stats
    Boolean? finalizer_info
    Boolean? exe
    Boolean? core
    Boolean? pid
  }
  command <<<
    jhsdb jmap \
      ~{if (heap) then "--heap" else ""} \
      ~{if (binary_heap) then "--binaryheap" else ""} \
      ~{if (dumpfile) then "--dumpfile" else ""} \
      ~{if (histo) then "--histo" else ""} \
      ~{if (cl_stats) then "--clstats" else ""} \
      ~{if (finalizer_info) then "--finalizerinfo" else ""} \
      ~{if (exe) then "--exe" else ""} \
      ~{if (core) then "--core" else ""} \
      ~{if (pid) then "--pid" else ""}
  >>>
  parameter_meta {
    heap: "to print java heap summary"
    binary_heap: "to dump java heap in hprof binary format"
    dumpfile: "name of the dump file"
    histo: "to print histogram of java object heap"
    cl_stats: "to print class loader statistics"
    finalizer_info: "to print information on objects awaiting finalization"
    exe: "executable image name"
    core: "path to coredump"
    pid: "pid of process to attach"
  }
  output {
    File out_stdout = stdout()
  }
}
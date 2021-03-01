version 1.0

task ChiselBedding {
  input {
    Directory? run_dir
    Boolean? raw_calls
    Boolean? no_extending
    Int? jobs
    String input_file_defaultcallscallstsv
  }
  command <<<
    chisel_bedding \
      ~{input_file_defaultcallscallstsv} \
      ~{if defined(run_dir) then ("--rundir " +  '"' + run_dir + '"') else ""} \
      ~{if (raw_calls) then "--rawcalls" else ""} \
      ~{if (no_extending) then "--noextending" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chisel:0.0.5--py_0"
  }
  parameter_meta {
    run_dir: "Running directory (default: current directory)"
    raw_calls: "Use raw copy numbers instead of consensus corrected\\nones (default: False)"
    no_extending: "Merge consecutive bins only if they are neighboring\\n(default: False, segments are extended to fill gaps)"
    jobs: "Number of parallele jobs to use (default: equal to\\nnumber of available processors)\\n"
    input_file_defaultcallscallstsv: "Input file with inferred copy numbers (default:\\ncalls/calls.tsv)"
  }
  output {
    File out_stdout = stdout()
  }
}
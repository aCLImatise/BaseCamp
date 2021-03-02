version 1.0

task SketchyOnlineSimulate {
  input {
    File? fast_x
    File? index
    Directory? outdir
    Int? reads_per_file
    Int? barcodes
    Float? speed_up
    String? start_time_regex
    String? test
    String headers_dot
  }
  command <<<
    sketchy online simulate \
      ~{headers_dot} \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(reads_per_file) then ("--reads_per_file " +  '"' + reads_per_file + '"') else ""} \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if defined(speed_up) then ("--speedup " +  '"' + speed_up + '"') else ""} \
      ~{if defined(start_time_regex) then ("--start_time_regex " +  '"' + start_time_regex + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0"
  }
  parameter_meta {
    fast_x: "Path to Fast{a,q} file to simulate run\\n[required]  [required]"
    index: "Path to Fast{a,q} index file from previous\\nsimulation [none]"
    outdir: "Output directory for run simulation [run_sim]"
    reads_per_file: "Number of reads per Fast{a,q} to simulate live\\nbasecalling [4000]"
    barcodes: "Barcode integers, comma-separated e.g. 1,2,3,4\\n[None]"
    speed_up: "Speed up the simulation by this factor [1.0]"
    start_time_regex: "Read start time regex to parse from read"
    test: "Run simple test mode; see docs [false]"
    headers_dot: "--barcode_regex TEXT          Barcode regex to parse from read headers."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}
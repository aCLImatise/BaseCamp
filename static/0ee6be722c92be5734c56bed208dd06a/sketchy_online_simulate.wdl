version 1.0

task SketchyOnlineSimulate {
  input {
    File? fast_x
    File? index
    File? outdir
    Int? reads_per_file
    String? barcodes
    Float? speed_up
    String? start_time_regex
    String? barcode_regex
    String? test
  }
  command <<<
    sketchy online simulate \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(reads_per_file) then ("--reads_per_file " +  '"' + reads_per_file + '"') else ""} \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if defined(speed_up) then ("--speedup " +  '"' + speed_up + '"') else ""} \
      ~{if defined(start_time_regex) then ("--start_time_regex " +  '"' + start_time_regex + '"') else ""} \
      ~{if defined(barcode_regex) then ("--barcode_regex " +  '"' + barcode_regex + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""}
  >>>
  parameter_meta {
    fast_x: "Path to Fast{a,q} file to simulate run [required]  [required]"
    index: "Path to Fast{a,q} index file from previous simulation [none]"
    outdir: "Output directory for run simulation [run_sim]"
    reads_per_file: "Number of reads per Fast{a,q} to simulate live basecalling [4000]"
    barcodes: "Barcode integers, comma-separated e.g. 1,2,3,4 [None]"
    speed_up: "Speed up the simulation by this factor [1.0]"
    start_time_regex: "Read start time regex to parse from read headers."
    barcode_regex: "Barcode regex to parse from read headers."
    test: "Run simple test mode; see docs [false]"
  }
}
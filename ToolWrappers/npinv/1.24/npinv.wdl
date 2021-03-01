version 1.0

task Npinv {
  input {
    Boolean? _file_write
    Boolean? _file_read
    Boolean? region
    Boolean? minal_n
    Boolean? ir_database
    Boolean? min
    Boolean? max
    Boolean? window
    Boolean? threshold
  }
  command <<<
    npinv \
      ~{if (_file_write) then "--output" else ""} \
      ~{if (_file_read) then "--input" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (minal_n) then "--minAln" else ""} \
      ~{if (ir_database) then "--IRdatabase" else ""} \
      ~{if (min) then "--min" else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (threshold) then "--threshold" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _file_write: "[String] file to write"
    _file_read: "[String] file to read"
    region: "[String] Specify the region for running.\\nSuch as chr9:1-1000 OR chr9 OR all Default[all]"
    minal_n: "[int] minimum size for Alignment & Inv. Default[500]"
    ir_database: "[String] An inverted repeat file for the reference in bed format. Default[none]"
    min: "[int] minimum size of an inversion. Default[500]"
    max: "[int] maximum size of an inversion. Default[10000]"
    window: "[int] minimun window size (bp) to merge inversion breakpoints. Default[2000]"
    threshold: "[int] minimum number of supporting reads for an inversion. Default[3]"
  }
  output {
    File out_stdout = stdout()
  }
}
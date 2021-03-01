version 1.0

task SeqtkGc {
  input {
    Boolean? identify_highat_regions
    Float? min_gc_fraction
    Int? min_region_length
    Float? xdropoff
    String in_dot_fa
  }
  command <<<
    seqtk gc \
      ~{in_dot_fa} \
      ~{if (identify_highat_regions) then "-w" else ""} \
      ~{if defined(min_gc_fraction) then ("-f " +  '"' + min_gc_fraction + '"') else ""} \
      ~{if defined(min_region_length) then ("-l " +  '"' + min_region_length + '"') else ""} \
      ~{if defined(xdropoff) then ("-x " +  '"' + xdropoff + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    identify_highat_regions: "identify high-AT regions"
    min_gc_fraction: "min GC fraction (or AT fraction for -w) [0.60]"
    min_region_length: "min region length to output [0]"
    xdropoff: "X-dropoff [10.0]"
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}
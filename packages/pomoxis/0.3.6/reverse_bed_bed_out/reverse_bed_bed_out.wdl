version 1.0

task ReverseBedBedOut {
  input {
    String reverse_bed
    String bed_in
    String ref_fast_a
    String bed_out
  }
  command <<<
    reverse_bed bed_out \
      ~{reverse_bed} \
      ~{bed_in} \
      ~{ref_fast_a} \
      ~{bed_out}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pomoxis:0.3.6--py_0"
  }
  parameter_meta {
    reverse_bed: ""
    bed_in: ""
    ref_fast_a: ""
    bed_out: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task ReverseBedRefFasta {
  input {
    String reverse_bed
    String bed_in
    String ref_fast_a
    String bed_out
  }
  command <<<
    reverse_bed ref_fasta \
      ~{reverse_bed} \
      ~{bed_in} \
      ~{ref_fast_a} \
      ~{bed_out}
  >>>
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
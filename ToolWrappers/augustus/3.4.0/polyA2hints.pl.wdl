version 1.0

task PolyA2hintspl {
  input {
    String swap_strand
  }
  command <<<
    polyA2hints_pl \
      ~{swap_strand}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    swap_strand: "swap strand, currently use this for polyT files"
  }
  output {
    File out_stdout = stdout()
  }
}
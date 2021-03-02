version 1.0

task PoreCAlignmentsAssignconsensushaplotype {
  input {
    Float? threshold
    String output_pore_c_table
  }
  command <<<
    pore_c alignments assign_consensus_haplotype \
      ~{output_pore_c_table} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    threshold: "major:minor haplotype fraction must be greater than this\\nvalue to assign a consensus  [default: 0.8]"
    output_pore_c_table: "Calculate a per-read consensus haplotype for each phase_set in ALIGN_TABLE"
  }
  output {
    File out_stdout = stdout()
  }
}
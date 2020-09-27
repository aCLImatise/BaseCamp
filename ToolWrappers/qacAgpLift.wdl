version 1.0

task QacAgpLift {
  input {
    Int? m_score
    String scaffold_to_chrom_dot_agp
    String scaffolds_dot_qac
  }
  command <<<
    qacAgpLift \
      ~{scaffold_to_chrom_dot_agp} \
      ~{scaffolds_dot_qac} \
      ~{if defined(m_score) then ("-mScore " +  '"' + m_score + '"') else ""}
  >>>
  parameter_meta {
    m_score: "- score to use for missing data (otherwise fail)\\nrange: 0-99, recommended values are 98 (low qual) or 99 (high)\\n"
    scaffold_to_chrom_dot_agp: ""
    scaffolds_dot_qac: ""
  }
  output {
    File out_stdout = stdout()
  }
}
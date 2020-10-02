version 1.0

task BuildRefContigs {
  input {
    String? m_mappingminoverlap_fragments
  }
  command <<<
    buildRefContigs \
      ~{if defined(m_mappingminoverlap_fragments) then ("-g " +  '"' + m_mappingminoverlap_fragments + '"') else ""}
  >>>
  parameter_meta {
    m_mappingminoverlap_fragments: "-m mapping\\n-minoverlap    fragments must overlap by at least this much\\n-U             build unitigs, for input to cgw\\n-S             build scaffolds, for input to terminator\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
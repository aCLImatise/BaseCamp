version 1.0

task KtImportRDPComparison {
  input {
    String rdp_comparison
    String name
  }
  command <<<
    ktImportRDPComparison \
      ~{rdp_comparison} \
      ~{name}
  >>>
  parameter_meta {
    rdp_comparison: "RDP comparison result downloaded as text."
    name: "A name for each library to appear in the chart. The default\\nis \\\"Library [1/2]\\\".\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Syco {
  input {
    Boolean? c_file
    Boolean? window
    Boolean? uncommon
    Boolean? minimum
  }
  command <<<
    _syco \
      ~{if (c_file) then "-cfile" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (uncommon) then "-uncommon" else ""} \
      ~{if (minimum) then "-minimum" else ""}
  >>>
  parameter_meta {
    c_file: "codon      Codon usage file"
    window: "integer    [30] Averaging window (Any integer value)"
    uncommon: "boolean    [N] Show common codon usage"
    minimum: "float      [.15] Minimum value for a common codon\\n(Number from 0.000 to 0.990)"
  }
  output {
    File out_stdout = stdout()
  }
}
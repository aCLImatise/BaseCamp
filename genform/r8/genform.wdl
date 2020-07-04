version 1.0

task Genform {
  input {
    String loss
    Int in_tens
    String dbe
    String cm
    String pc
    String sc
    String no_ref
  }
  command <<<
    genform \
      ~{loss} \
      ~{in_tens} \
      ~{dbe} \
      ~{cm} \
      ~{pc} \
      ~{sc} \
      ~{no_ref}
  >>>
  parameter_meta {
    loss: ": for analyzing MS/MS peaks write losses instead of fragments"
    in_tens: ": write intensities of MS/MS peaks to output"
    dbe: ": write double bond equivalents to output"
    cm: ": write calculated ion masses to output"
    pc: ": output match values in percent"
    sc: ": strip calculated isotope distributions"
    no_ref: ": hide the reference information"
  }
}
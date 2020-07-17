version 1.0

task _dan {
  input {
    Boolean? window_size
    Boolean? shift_increment
    Boolean? dna_conc
    Boolean? salt_conc
    Boolean? product
    Boolean? thermo
  }
  command <<<
    _dan \
      ~{true="-windowsize" false="" window_size} \
      ~{true="-shiftincrement" false="" shift_increment} \
      ~{true="-dnaconc" false="" dna_conc} \
      ~{true="-saltconc" false="" salt_conc} \
      ~{true="-product" false="" product} \
      ~{true="-thermo" false="" thermo}
  >>>
  parameter_meta {
    window_size: "integer    [20] The values of melting point and other thermodynamic properties of the sequence are determined by taking a short length of sequence known as a window and determining the properties of the sequence in that window. The window is incrementally moved along the sequence with the properties being calculated at each new position. (Integer from 1 to 100)"
    shift_increment: "integer    [1] This is the amount by which the window is moved at each increment in order to find the melting point and other properties along the sequence. (Integer 1 or more)"
    dna_conc: "float      [50.] Enter DNA concentration (nM) (Number from 1.000 to 100000.000)"
    salt_conc: "float      [50.] Enter salt concentration (mM) (Number from 1.000 to 1000.000)"
    product: "toggle     This prompts for percent formamide, percent of mismatches allowed and product length."
    thermo: "toggle     Output the DeltaG, DeltaH and DeltaS values of the sequence windows to the output data file."
  }
}
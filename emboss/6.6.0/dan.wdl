version 1.0

task Dan {
  input {
    Boolean? window_size
    Boolean? shift_increment
    Boolean? dna_conc
    Boolean? salt_conc
    Boolean? product
    File? thermo
    Boolean? rna
    File? plot
  }
  command <<<
    dan \
      ~{if (window_size) then "-windowsize" else ""} \
      ~{if (shift_increment) then "-shiftincrement" else ""} \
      ~{if (dna_conc) then "-dnaconc" else ""} \
      ~{if (salt_conc) then "-saltconc" else ""} \
      ~{if (product) then "-product" else ""} \
      ~{if (thermo) then "-thermo" else ""} \
      ~{if (rna) then "-rna" else ""} \
      ~{if (plot) then "-plot" else ""}
  >>>
  parameter_meta {
    window_size: "integer    [20] The values of melting point and other\\nthermodynamic properties of the sequence are\\ndetermined by taking a short length of\\nsequence known as a window and determining\\nthe properties of the sequence in that\\nwindow. The window is incrementally moved\\nalong the sequence with the properties being\\ncalculated at each new position. (Integer\\nfrom 1 to 100)"
    shift_increment: "integer    [1] This is the amount by which the window\\nis moved at each increment in order to find\\nthe melting point and other properties along\\nthe sequence. (Integer 1 or more)"
    dna_conc: "float      [50.] Enter DNA concentration (nM) (Number\\nfrom 1.000 to 100000.000)"
    salt_conc: "float      [50.] Enter salt concentration (mM) (Number\\nfrom 1.000 to 1000.000)"
    product: "toggle     This prompts for percent formamide, percent\\nof mismatches allowed and product length."
    thermo: "toggle     Output the DeltaG, DeltaH and DeltaS values\\nof the sequence windows to the output data\\nfile."
    rna: "boolean    This specifies that the sequence is an RNA\\nsequence and not a DNA sequence."
    plot: "toggle     If this is not specified then the file of\\noutput data is produced, else a plot of the\\nmelting point along the sequence is\\nproduced."
  }
  output {
    File out_stdout = stdout()
    File out_thermo = "${in_thermo}"
    File out_plot = "${in_plot}"
  }
}
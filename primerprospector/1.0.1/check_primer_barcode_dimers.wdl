version 1.0

task CheckPrimerBarcodeDimers.py {
  input {
    String? barcodes
    String? primer_one
    String? primer_two
    String? energy_parameters
  }
  command <<<
    check_primer_barcode_dimers.py \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if defined(primer_one) then ("--primer1 " +  '"' + primer_one + '"') else ""} \
      ~{if defined(primer_two) then ("--primer2 " +  '"' + primer_two + '"') else ""} \
      ~{if defined(energy_parameters) then ("--energy_parameters " +  '"' + energy_parameters + '"') else ""}
  >>>
  parameter_meta {
    barcodes: "Filepath of barcodes to score input primer(s) against. [REQUIRED]"
    primer_one: "Primer, written in 5' to 3', that is linked to barcodes tested.  If linker sequence is present between primer and barcode, include it with this sequences. [REQUIRED]"
    primer_two: "Second primer, written in 5' to 3' orientation.  This primer by default is not associated with any barcodes. [REQUIRED]"
    energy_parameters: "Specify energy parameters file for predicting secondary structures.  A DNA parameters file, dna_DM.par, is found in the DNA_parameters folder of Primer Prospector, and should be pointed to with this parameter.  If an incorrect file is used, the Vienna software will use default parameters, which are for RNA folding, and could give misleading results.  The provided DNA parameters file is a modified form of the DNA parameters from  David Mathews' RNAstructure program. [REQUIRED]"
  }
}
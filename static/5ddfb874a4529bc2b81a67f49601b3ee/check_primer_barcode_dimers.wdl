version 1.0

task CheckPrimerBarcodeDimers.py {
  input {
    String barcodesBarcodes
    String primerPrimer1
    String primerPrimer2
    String energyEnergyParameters
  }
  command <<<
    check_primer_barcode_dimers.py \
      ~{if defined(barcodesBarcodes) then ("--barcodes " +  '"' + barcodesBarcodes + '"') else ""} \
      ~{if defined(primerPrimer1) then ("--primer1 " +  '"' + primerPrimer1 + '"') else ""} \
      ~{if defined(primerPrimer2) then ("--primer2 " +  '"' + primerPrimer2 + '"') else ""} \
      ~{if defined(energyEnergyParameters) then ("--energy_parameters " +  '"' + energyEnergyParameters + '"') else ""}
  >>>
}
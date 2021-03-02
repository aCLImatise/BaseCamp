version 1.0

task CheckPrimerBarcodeDimerspy {
  input {
    Boolean? verbose
    Int? annealing_temp
    Float? score_threshold
    Directory? output_dir
    Boolean? paired_end_barcodes
    Boolean? suppress_graphs
    File? barcodes
    Int? primer_one
    Int? primer_two
    File? energy_parameters
  }
  command <<<
    check_primer_barcode_dimers_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(annealing_temp) then ("--annealing_temp " +  '"' + annealing_temp + '"') else ""} \
      ~{if defined(score_threshold) then ("--score_threshold " +  '"' + score_threshold + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (paired_end_barcodes) then "--paired_end_barcodes" else ""} \
      ~{if (suppress_graphs) then "--suppress_graphs" else ""} \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if defined(primer_one) then ("--primer1 " +  '"' + primer_one + '"') else ""} \
      ~{if defined(primer_two) then ("--primer2 " +  '"' + primer_two + '"') else ""} \
      ~{if defined(energy_parameters) then ("--energy_parameters " +  '"' + energy_parameters + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    annealing_temp: "Specify an annealing temperature in degrees Celsius.\\n[default: 50]"
    score_threshold: "Specify a score threshold for the Gibbs energy\\ncalculation, below which a barcode/primer combination\\nis flagged for potential secondary structure.\\n[default: -10.0]"
    output_dir: "Specify output directory for barcode/primer secondary\\nstructure summary and graphs. [default: .]"
    paired_end_barcodes: "If enabled, barcodes will be appended to both primer 1\\nand primer 2.  [default: False]"
    suppress_graphs: "Suppress retention of output postscript graphs.\\n[default: False]"
    barcodes: "Filepath of barcodes to score input primer(s) against.\\n[REQUIRED]"
    primer_one: "Primer, written in 5' to 3', that is linked to\\nbarcodes tested.  If linker sequence is present\\nbetween primer and barcode, include it with this\\nsequences. [REQUIRED]"
    primer_two: "Second primer, written in 5' to 3' orientation.  This\\nprimer by default is not associated with any barcodes.\\n[REQUIRED]"
    energy_parameters: "Specify energy parameters file for predicting\\nsecondary structures.  A DNA parameters file,\\ndna_DM.par, is found in the DNA_parameters folder of\\nPrimer Prospector, and should be pointed to with this\\nparameter.  If an incorrect file is used, the Vienna\\nsoftware will use default parameters, which are for\\nRNA folding, and could give misleading results.  The\\nprovided DNA parameters file is a modified form of the\\nDNA parameters from  David Mathews' RNAstructure\\nprogram. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}
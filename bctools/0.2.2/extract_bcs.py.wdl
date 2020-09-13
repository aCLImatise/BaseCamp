version 1.0

task ExtractBcspy {
  input {
    File? outfile
    File? bcs
    Boolean? fast_a_barcodes
    Boolean? add_bc_to_fast_q
    Boolean? verbose
    Boolean? debug
    String in_file
    String pattern
  }
  command <<<
    extract_bcs_py \
      ~{in_file} \
      ~{pattern} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(bcs) then ("--bcs " +  '"' + bcs + '"') else ""} \
      ~{if (fast_a_barcodes) then "--fasta-barcodes" else ""} \
      ~{if (add_bc_to_fast_q) then "--add-bc-to-fastq" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    outfile: "Write results to this file."
    bcs: "Write barcodes to this file in FASTQ format."
    fast_a_barcodes: "Save extracted barcodes in FASTA format."
    add_bc_to_fast_q: "Append extracted barcodes to the FASTQ headers."
    verbose: "Be verbose."
    debug: "Print lots of debugging information"
    in_file: "Path to fastq file."
    pattern: "Pattern of barcode nucleotides starting at 5'-end. X\\npositions will be moved to the header, N positions\\nwill be kept."
  }
  output {
    File out_stdout = stdout()
  }
}
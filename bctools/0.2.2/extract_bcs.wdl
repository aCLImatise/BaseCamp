version 1.0

task ExtractBcs.py {
  input {
    String? outfile
    String? bcs
    Boolean? fast_a_barcodes
    Boolean? add_bc_to_fast_q
    Boolean? verbose
    Boolean? debug
    String in_file
    String pattern
  }
  command <<<
    extract_bcs.py \
      ~{in_file} \
      ~{pattern} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(bcs) then ("--bcs " +  '"' + bcs + '"') else ""} \
      ~{true="--fasta-barcodes" false="" fast_a_barcodes} \
      ~{true="--add-bc-to-fastq" false="" add_bc_to_fast_q} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    outfile: "Write results to this file."
    bcs: "Write barcodes to this file in FASTQ format."
    fast_a_barcodes: "Save extracted barcodes in FASTA format."
    add_bc_to_fast_q: "Append extracted barcodes to the FASTQ headers."
    verbose: "Be verbose."
    debug: "Print lots of debugging information"
    in_file: "Path to fastq file."
    pattern: "Pattern of barcode nucleotides starting at 5'-end. X positions will be moved to the header, N positions will be kept."
  }
}
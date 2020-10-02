version 1.0

task FastxBarcodeSplitterpl {
  input {
    File? bc_file
    File? prefix
    File? suffix
    Boolean? bol
    Boolean? eol
    Int? mismatches
    Boolean? exact
    String? partial
    Boolean? quiet
    Boolean? debug
    Boolean? gatct__mismatch
    String gatct__mismatches
  }
  command <<<
    fastx_barcode_splitter_pl \
      ~{gatct__mismatches} \
      ~{if defined(bc_file) then ("--bcfile " +  '"' + bc_file + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if (bol) then "--bol" else ""} \
      ~{if (eol) then "--eol" else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if (exact) then "--exact" else ""} \
      ~{if defined(partial) then ("--partial " +  '"' + partial + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (gatct__mismatch) then "-ATTTACTATGTAAAGATAGAAGGAATAAGGTGAAG" else ""}
  >>>
  parameter_meta {
    bc_file: "- Barcodes file name. (see explanation below.)"
    prefix: "- File prefix. will be added to the output files. Can be used\\nto specify output directories."
    suffix: "- File suffix (optional). Can be used to specify file\\nextensions."
    bol: "- Try to match barcodes at the BEGINNING of sequences.\\n(What biologists would call the 5' end, and programmers\\nwould call index 0.)"
    eol: "- Try to match barcodes at the END of sequences.\\n(What biologists would call the 3' end, and programmers\\nwould call the end of the string.)\\nNOTE: one of --bol, --eol must be specified, but not both."
    mismatches: "- Max. number of mismatches allowed. default is 1."
    exact: "- Same as '--mismatches 0'. If both --exact and --mismatches\\nare specified, '--exact' takes precedence."
    partial: "- Allow partial overlap of barcodes. (see explanation below.)\\n(Default is not partial matching)"
    quiet: "- Don't print counts and summary at the end of the run.\\n(Default is to print.)"
    debug: "- Print lots of useless debug information to STDERR."
    gatct__mismatch: "GATCT (1 mismatch)"
    gatct__mismatches: "GATCT (4 mismatches)"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}
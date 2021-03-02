version 1.0

task GoBambus2 {
  input {
    Boolean? all
    Boolean? contigs
    Boolean? reads
    Boolean? verbose
    Boolean? two_amos
    Boolean? two_fast_a
    Boolean? bundle
    Boolean? clk
    Boolean? minimus
    Boolean? orient
    Boolean? prints_caff
    Boolean? reps
  }
  command <<<
    goBambus2 \
      ~{if (all) then "--all" else ""} \
      ~{if (contigs) then "--contigs" else ""} \
      ~{if (reads) then "--reads" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (two_amos) then "--2amos" else ""} \
      ~{if (two_fast_a) then "--2fasta" else ""} \
      ~{if (bundle) then "--bundle" else ""} \
      ~{if (clk) then "--clk" else ""} \
      ~{if (minimus) then "--minimus" else ""} \
      ~{if (orient) then "--orient" else ""} \
      ~{if (prints_caff) then "--printscaff" else ""} \
      ~{if (reps) then "--reps" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: ": run ALL steps (irrespective of flags)"
    contigs: ": indicates to start with pre-assembled contigs"
    reads: ": indicates to start with reads, assemble with Minimums"
    verbose: ": increase to full verbosity"
    two_amos: ": use toAmos, create AMOS format AFG"
    two_fast_a: ": create FASTA contig output"
    bundle: ": run Bambus2 bundler"
    clk: ": run Bambus2 create links binary"
    minimus: ": run Minimus to assemble reads"
    orient: ": run main Bambus2 binary, to Order & Orient contigs"
    prints_caff: ": create FASTA scaffold output"
    reps: ": Run Bambus2 graph-based repeat detection binary"
  }
  output {
    File out_stdout = stdout()
  }
}
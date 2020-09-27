version 1.0

task Varagg {
  input {
    Boolean? verbose
    Boolean? quiet
    Int? io_threads
    File? outvcfbcf_path_output
    File? input_panel
    File? input_ped
    File? input_fast_a
  }
  command <<<
    var_agg \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(io_threads) then ("--io-threads " +  '"' + io_threads + '"') else ""} \
      ~{if (outvcfbcf_path_output) then "--output" else ""} \
      ~{if defined(input_panel) then ("--input-panel " +  '"' + input_panel + '"') else ""} \
      ~{if defined(input_ped) then ("--input-ped " +  '"' + input_ped + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Increase verbosity"
    quiet: "Decrease verbosity"
    io_threads: "Number of additional threads to use for (de)compression in I/O. [default: 0]"
    outvcfbcf_path_output: "<OUT.<vcf|bcf>>          Path to output VCF/BCF file to create. Will also write out a CSI/TBI index."
    input_panel: "...    Path to panel file, format is \\\"SAMPLE<tab>SUB-\\nPOPULATION<tab>POPULATION<ignored>\\\""
    input_ped: "...        Path to input PED file for FOUND_* INFO entries."
    input_fast_a: "...       FAI-indexed reference FASTA file, only index will be accessed."
  }
  output {
    File out_stdout = stdout()
    File out_outvcfbcf_path_output = "${in_outvcfbcf_path_output}"
  }
}
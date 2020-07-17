version 1.0

task VarAgg {
  input {
    Boolean? verbose
    Boolean? quiet
    String? io_threads
    Boolean? outvcfbcf_path_output
    String? input_panel
    String? input_ped
    String? input_fast_a
  }
  command <<<
    var-agg \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(io_threads) then ("--io-threads " +  '"' + io_threads + '"') else ""} \
      ~{true="--output" false="" outvcfbcf_path_output} \
      ~{if defined(input_panel) then ("--input-panel " +  '"' + input_panel + '"') else ""} \
      ~{if defined(input_ped) then ("--input-ped " +  '"' + input_ped + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Increase verbosity"
    quiet: "Decrease verbosity"
    io_threads: "Number of additional threads to use for (de)compression in I/O. [default: 0]"
    outvcfbcf_path_output: "<OUT.<vcf|bcf>>          Path to output VCF/BCF file to create. Will also write out a CSI/TBI index."
    input_panel: "...    Path to panel file, format is \"SAMPLE<tab>SUB- POPULATION<tab>POPULATION<ignored>\""
    input_ped: "...        Path to input PED file for FOUND_* INFO entries."
    input_fast_a: "...       FAI-indexed reference FASTA file, only index will be accessed."
  }
}
version 1.0

task Biopetextractadaptersfastqc {
  input {
    String? log_level
    File? input_file
    File? adapter_output_file
    File? contam_soutputfile
    Boolean? skip_contam_s
    File? known_contam_file
    File? known_adapter_file
    Float? adapter_cut_off
    Boolean? output_as_fast_a
    String extract_adapters_fast_qc
  }
  command <<<
    biopet_extractadaptersfastqc \
      ~{extract_adapters_fast_qc} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(input_file) then ("--inputFile " +  '"' + input_file + '"') else ""} \
      ~{if defined(adapter_output_file) then ("--adapterOutputFile " +  '"' + adapter_output_file + '"') else ""} \
      ~{if defined(contam_soutputfile) then ("--contamsOutputFile " +  '"' + contam_soutputfile + '"') else ""} \
      ~{if (skip_contam_s) then "--skipContams" else ""} \
      ~{if defined(known_contam_file) then ("--knownContamFile " +  '"' + known_contam_file + '"') else ""} \
      ~{if defined(known_adapter_file) then ("--knownAdapterFile " +  '"' + known_adapter_file + '"') else ""} \
      ~{if defined(adapter_cut_off) then ("--adapterCutoff " +  '"' + adapter_cut_off + '"') else ""} \
      ~{if (output_as_fast_a) then "--outputAsFasta" else ""}
  >>>
  parameter_meta {
    log_level: "Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'"
    input_file: "Fastqc data file (i.e., fastqc_data.txt file in the FastQC output)"
    adapter_output_file: "Output file for adapters, if not supplied output will go to stdout"
    contam_soutputfile: "Output file for adapters, if not supplied output will go to stdout"
    skip_contam_s: "If this is set only the adapters block is used, other wise contaminations is also used"
    known_contam_file: "This file should contain the known contaminations from fastqc"
    known_adapter_file: "This file should contain the known adapters from fastqc"
    adapter_cut_off: "The fraction of the adapters in a read should be above this fraction, default is 0.001"
    output_as_fast_a: "Output in fasta format, default only sequences"
    extract_adapters_fast_qc: ""
  }
  output {
    File out_stdout = stdout()
    File out_input_file = "${in_input_file}"
    File out_adapter_output_file = "${in_adapter_output_file}"
    File out_contam_soutputfile = "${in_contam_soutputfile}"
  }
}
version 1.0

task HLAProfilerplCreateTaxonomy {
  input {
    Boolean? reference
    Boolean? cwd
    Boolean? output_dir
    Boolean? log
    String options
  }
  command <<<
    HLAProfiler_pl create_taxonomy \
      ~{options} \
      ~{if (reference) then "-reference" else ""} \
      ~{if (cwd) then "-cwd" else ""} \
      ~{if (output_dir) then "-output_dir" else ""} \
      ~{if (log) then "-log" else ""}
  >>>
  parameter_meta {
    reference: "|r    HLA reference fasta (required)"
    cwd: "File containing the names of common and well-documented alleles. This file can be blank but must be specified.(required)"
    output_dir: "|od  parent directory of taxonomy (default:\\\".\\\")"
    log: "|l          name of the prediction log file"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}
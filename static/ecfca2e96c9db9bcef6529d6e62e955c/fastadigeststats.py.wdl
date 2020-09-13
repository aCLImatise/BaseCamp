version 1.0

task Fastadigeststatspy {
  input {
    String? threads_to_run
    Boolean? fasta_file_operate
    File? file_write_results
    String? enzyme
    String? enzyme_pattern
    Int? min
    Int? max
    Boolean? parallel
    String? fast_a
    String? out
  }
  command <<<
    fastadigeststats_py \
      ~{fast_a} \
      ~{out} \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{if (fasta_file_operate) then "-f" else ""} \
      ~{if (file_write_results) then "-o" else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(enzyme_pattern) then ("--enzyme-pattern " +  '"' + enzyme_pattern + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""}
  >>>
  parameter_meta {
    threads_to_run: "Threads to run"
    fasta_file_operate: "[FASTA], --fasta [FASTA]\\nThe fasta file to operate on."
    file_write_results: "[OUT], --out [OUT]\\nThe file to write results to. Leave blank for stdout,"
    enzyme: "[{trypsin,lysc,none,argc,gluc,aspn,V8} ...]\\nEnzyme to use. Pass a list like \\\"trypsin lysc\\\" to use\\nmultiple enzymes. The order of enzymes will be the\\norder of digestion if digesting in series."
    enzyme_pattern: "A regex cleavage pattern such as [KR]|{P} to cleave\\nproteins with."
    min: "Minimum cleavage length"
    max: "Maximum cleavage length"
    parallel: "Should cleavages be done in parallel (default is\\nserial digestion)?\\n"
    fast_a: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_write_results = "${in_file_write_results}"
  }
}
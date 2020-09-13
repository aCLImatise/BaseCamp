version 1.0

task GdtoolsCHECK {
  input {
    File? output_gd_file
    File? reference
    Boolean? evidence
    Int? jc_buffer
    Int? jc_shorten
    Boolean? jc_only_accepted
    File? plot_jc
    Boolean? verbose
  }
  command <<<
    gdtools CHECK \
      ~{if defined(output_gd_file) then ("--output " +  '"' + output_gd_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (evidence) then "--evidence" else ""} \
      ~{if defined(jc_buffer) then ("--jc-buffer " +  '"' + jc_buffer + '"') else ""} \
      ~{if defined(jc_shorten) then ("--jc-shorten " +  '"' + jc_shorten + '"') else ""} \
      ~{if (jc_only_accepted) then "--jc-only-accepted" else ""} \
      ~{if defined(plot_jc) then ("--plot-jc " +  '"' + plot_jc + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    output_gd_file: "output GD file (DEFAULT=comp.gd)"
    reference: "file containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    evidence: "compare evidence"
    jc_buffer: "when comparing JC evidence, length of sequence segment to compare for JC evidence (DEFAULT=50)"
    jc_shorten: "when comparing JC evidence, length to shorten control segments by when comparing JC evidence for overlap (DEFAULT=5)"
    jc_only_accepted: "when comparing JC evidence, do not score/count rejected items"
    plot_jc: "plot JC Precision versus Score, argument is a prefix for the file paths"
    verbose: "verbose mode"
  }
  output {
    File out_stdout = stdout()
    File out_output_gd_file = "${in_output_gd_file}"
  }
}
version 1.0

task SuppapyGenerateEvents {
  input {
    File? input_file
    File? output_file
    String? list_analyze_space
    String? boundary
    Int? threshold
    Boolean? pool_genes
    Int? exon_length
    String? mode
    String critical
  }
  command <<<
    suppa_py generateEvents \
      ~{critical} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(list_analyze_space) then ("-e " +  '"' + list_analyze_space + '"') else ""} \
      ~{if defined(boundary) then ("--boundary " +  '"' + boundary + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (pool_genes) then "--pool-genes" else ""} \
      ~{if defined(exon_length) then ("--exon-length " +  '"' + exon_length + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  parameter_meta {
    input_file: "specify input file"
    output_file: "specify output path and name without extension"
    list_analyze_space: "[{SE,SS,MX,RI,FL} ...], --event-type {SE,SS,MX,RI,FL} [{SE,SS,MX,RI,FL} ...]\\nlist of events to analyze. (space separated) Options:\\nSE -- Skipping Exon SS -- Alternative Splice Site\\n(5'/3') MX -- Mutually Exclusive Exon RI -- Retained\\nIntron FL -- Alternative First/Last Exon"
    boundary: "Boundary type.Options: S -- Strict (Default) V --\\nVariable"
    threshold: "Variability treshold. In case of strict boundaries\\nthis argument is ignored(Default: 10nt)."
    pool_genes: "pool together overlapping genes."
    exon_length: "length of the exons for its visualization. (Default:\\n100nt)"
    mode: "to choose from DEBUG, INFO, WARNING, ERROR and"
    critical: "-f {ioe,ioi}, --format {ioe,ioi}"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}
version 1.0

task DrawFusionsR {
  input {
    Int? pdf_height
    Int? pdf_width
    Int? render_three_d_effect
    String? print_exon_labels
    String? squish_introns
    Int? protein_domains
    String? min_confidence_for_circo_splot
    String? cytoband_s
    String? alignments
    String? var_output
    String? fusions
    String? annotation
  }
  command <<<
    draw_fusions_R \
      ~{if defined(pdf_height) then ("--pdfHeight " +  '"' + pdf_height + '"') else ""} \
      ~{if defined(pdf_width) then ("--pdfWidth " +  '"' + pdf_width + '"') else ""} \
      ~{if defined(render_three_d_effect) then ("--render3dEffect " +  '"' + render_three_d_effect + '"') else ""} \
      ~{if defined(print_exon_labels) then ("--printExonLabels " +  '"' + print_exon_labels + '"') else ""} \
      ~{if defined(squish_introns) then ("--squishIntrons " +  '"' + squish_introns + '"') else ""} \
      ~{if defined(protein_domains) then ("--proteinDomains " +  '"' + protein_domains + '"') else ""} \
      ~{if defined(min_confidence_for_circo_splot) then ("--minConfidenceForCircosPlot " +  '"' + min_confidence_for_circo_splot + '"') else ""} \
      ~{if defined(cytoband_s) then ("--cytobands " +  '"' + cytoband_s + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(fusions) then ("--fusions " +  '"' + fusions + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arriba:2.1.0--hd2e4403_0"
  }
  parameter_meta {
    pdf_height: ""
    pdf_width: ""
    render_three_d_effect: ""
    print_exon_labels: ""
    squish_introns: ""
    protein_domains: ""
    min_confidence_for_circo_splot: ""
    cytoband_s: ""
    alignments: ""
    var_output: ""
    fusions: ""
    annotation: ""
  }
  output {
    File out_stdout = stdout()
  }
}
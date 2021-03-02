version 1.0

task CnvkitpyDiagram {
  input {
    String? segment
    Int? threshold
    Int? min_probes
    Boolean? haploid_x_reference
    String? sample_sex
    Boolean? no_shift_xy
    File? output_pdf_file
    File? title
    File filename
  }
  command <<<
    cnvkit_py diagram \
      ~{filename} \
      ~{if defined(segment) then ("--segment " +  '"' + segment + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(min_probes) then ("--min-probes " +  '"' + min_probes + '"') else ""} \
      ~{if (haploid_x_reference) then "--haploid-x-reference" else ""} \
      ~{if defined(sample_sex) then ("--sample-sex " +  '"' + sample_sex + '"') else ""} \
      ~{if (no_shift_xy) then "--no-shift-xy" else ""} \
      ~{if defined(output_pdf_file) then ("--output " +  '"' + output_pdf_file + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cnvkit:0.9.8--py_0"
  }
  parameter_meta {
    segment: "Segmentation calls (.cns), the output of the 'segment'\\ncommand."
    threshold: "Copy number change threshold to label genes. [Default:\\n0.5]"
    min_probes: "Minimum number of covered probes to label a gene.\\n[Default: 3]"
    haploid_x_reference: "Assume inputs were normalized to a male reference\\n(i.e. female samples will have +1 log-CNR of chrX;\\notherwise male samples would have -1 chrX)."
    sample_sex: "Specify the sample's chromosomal sex as male or\\nfemale. (Otherwise guessed from X and Y coverage)."
    no_shift_xy: "Don't adjust the X and Y chromosomes according to\\nsample sex."
    output_pdf_file: "Output PDF file name."
    title: "Plot title. [Default: sample ID, from filename or -i]"
    filename: "Processed coverage data file (*.cnr), the output of\\nthe 'fix' sub-command."
  }
  output {
    File out_stdout = stdout()
    File out_output_pdf_file = "${in_output_pdf_file}"
  }
}
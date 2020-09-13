version 1.0

task CnvkitpyExportBed {
  input {
    File? sample_id
    Boolean? label_genes
    Int? ploidy
    String? sample_sex
    String? show
    Boolean? haploid_x_reference
    File? output_file_name
    String segments
  }
  command <<<
    cnvkit_py export bed \
      ~{segments} \
      ~{if defined(sample_id) then ("--sample-id " +  '"' + sample_id + '"') else ""} \
      ~{if (label_genes) then "--label-genes" else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(sample_sex) then ("--sample-sex " +  '"' + sample_sex + '"') else ""} \
      ~{if defined(show) then ("--show " +  '"' + show + '"') else ""} \
      ~{if (haploid_x_reference) then "--haploid-x-reference" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    sample_id: "Identifier to write in the 4th column of the BED file.\\n[Default: use the sample ID, taken from the file name]"
    label_genes: "Show gene names in the 4th column of the BED file.\\n(This is a bad idea if >1 input files are given.)"
    ploidy: "Ploidy of the sample cells. [Default: 2]"
    sample_sex: "Specify the sample's chromosomal sex as male or\\nfemale. (Otherwise guessed from X and Y coverage)."
    show: "Which segmented regions to show: 'all' = all segment\\nregions; 'variant' = CNA regions with non-neutral copy\\nnumber; 'ploidy' = CNA regions with non-default\\nploidy. [Default: ploidy]"
    haploid_x_reference: "Was a male reference used? If so, expect half ploidy\\non chrX and chrY; otherwise, only chrY has half\\nploidy. In CNVkit, if a male reference was used, the\\n\\\"neutral\\\" copy number (ploidy) of chrX is 1; chrY is\\nhaploid for either reference sex."
    output_file_name: "Output file name.\\n"
    segments: "Segmented copy ratio data files (*.cns), the output of\\nthe 'segment' or 'call' sub-commands."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}
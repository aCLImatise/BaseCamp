version 1.0

task Sigprofiler {
  input {
    Int? install_genome
    String? name
    Int? genome
    File? files
    Boolean? exo_me
    File? bed
    Boolean? chrom
    Boolean? plot
    Boolean? tsb
    Boolean? gs
  }
  command <<<
    sigprofiler \
      ~{if defined(install_genome) then ("--install_genome " +  '"' + install_genome + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{if (exo_me) then "--exome" else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if (chrom) then "--chrom" else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if (tsb) then "--tsb" else ""} \
      ~{if (gs) then "--gs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    install_genome: "Install de novo any of the following reference\\ngenomes: 'GRCh37', 'GRCh38', 'mm9' or 'mm10'."
    name: "Provide a project name"
    genome: "Provide a reference genome (ex: GRCh37, GRCh38, mm9 or\\nmm10)."
    files: "Path where the input vcf files are located."
    exo_me: "Flag to use only the exome or not."
    bed: "BED file that contains a list of ranges to be used in\\ngenerating the matrices."
    chrom: "Create the matrices on a per chromosome basis."
    plot: "Generate the plots for each context."
    tsb: "Performs a transcriptional strand bias test for the\\n24, 384, and 6144 contexts."
    gs: "Performs a gene strand bias test."
  }
  output {
    File out_stdout = stdout()
  }
}
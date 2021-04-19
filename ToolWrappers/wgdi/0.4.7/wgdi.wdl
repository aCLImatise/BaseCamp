version 1.0

task Wgdi {
  input {
    String? show_homologous_dotplot
    String? icl
    Int? ks
    String? bk
    String? bi
    String? extract_eventrelated_genomic
    String? kp
    String? kf
    String? pf
    String? pc
    String? show_eventrelated_alignment
    String? at
    String? polyploidyindex_characterize_degree
    String? show_subgenomes_genome
    String? conf
    String fractionation
  }
  command <<<
    wgdi \
      ~{fractionation} \
      ~{if defined(show_homologous_dotplot) then ("-d " +  '"' + show_homologous_dotplot + '"') else ""} \
      ~{if defined(icl) then ("-icl " +  '"' + icl + '"') else ""} \
      ~{if defined(ks) then ("-ks " +  '"' + ks + '"') else ""} \
      ~{if defined(bk) then ("-bk " +  '"' + bk + '"') else ""} \
      ~{if defined(bi) then ("-bi " +  '"' + bi + '"') else ""} \
      ~{if defined(extract_eventrelated_genomic) then ("-c " +  '"' + extract_eventrelated_genomic + '"') else ""} \
      ~{if defined(kp) then ("-kp " +  '"' + kp + '"') else ""} \
      ~{if defined(kf) then ("-kf " +  '"' + kf + '"') else ""} \
      ~{if defined(pf) then ("-pf " +  '"' + pf + '"') else ""} \
      ~{if defined(pc) then ("-pc " +  '"' + pc + '"') else ""} \
      ~{if defined(show_eventrelated_alignment) then ("-a " +  '"' + show_eventrelated_alignment + '"') else ""} \
      ~{if defined(at) then ("-at " +  '"' + at + '"') else ""} \
      ~{if defined(polyploidyindex_characterize_degree) then ("-p " +  '"' + polyploidyindex_characterize_degree + '"') else ""} \
      ~{if defined(show_subgenomes_genome) then ("-r " +  '"' + show_subgenomes_genome + '"') else ""} \
      ~{if defined(conf) then ("-conf " +  '"' + conf + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wgdi:0.4.7--pyhb7b1952_0"
  }
  parameter_meta {
    show_homologous_dotplot: "Show homologous gene dotplot"
    icl: "Improved version of ColinearScan"
    ks: "Calculate Ka/Ks for homologous gene pairs by YN00"
    bk: "Show Ks of blocks in a dotplot"
    bi: "Collinearity and Ks speculate whole genome duplication"
    extract_eventrelated_genomic: "Extract event-related genomic alignment"
    kp: "A simple way to get ks peaks"
    kf: "A simple way to draw ks distribution map"
    pf: "Gaussian fitting of ks distribution"
    pc: "Polyploid distinguish among subgenomes"
    show_eventrelated_alignment: "Show event-related genomic alignment in a dotplot"
    at: "Collinear genes construct phylogenetic trees"
    polyploidyindex_characterize_degree: "Polyploidy-index characterize the degree of divergence\\nbetween subgenomes of a polyploidy"
    show_subgenomes_genome: "Show subgenomes in gene retention or genome"
    conf: "Display and modify the environment variable"
    fractionation: "-ci CIRCOS            A simple way to run circos"
  }
  output {
    File out_stdout = stdout()
  }
}
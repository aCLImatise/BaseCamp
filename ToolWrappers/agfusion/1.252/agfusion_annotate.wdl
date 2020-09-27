version 1.0

task AgfusionAnnotate {
  input {
    Int? gene_five_prime
    Int? gene_three_prime
    Int? junction_five_prime
    Int? junction_three_prime
    File? database
    Directory? out
    Boolean? noncanonical
    Array[String] protein_databases
    Int? re_color
    String? rename
    Array[String] exclude_domain
    File? type
    File? height
    String? dpi
    Int? font_size
    Boolean? wt
    Boolean? middle_star
    Boolean? no_domain_labels
    Boolean? debug
    Int? scale
    String png
  }
  command <<<
    agfusion annotate \
      ~{png} \
      ~{if defined(gene_five_prime) then ("--gene5prime " +  '"' + gene_five_prime + '"') else ""} \
      ~{if defined(gene_three_prime) then ("--gene3prime " +  '"' + gene_three_prime + '"') else ""} \
      ~{if defined(junction_five_prime) then ("--junction5prime " +  '"' + junction_five_prime + '"') else ""} \
      ~{if defined(junction_three_prime) then ("--junction3prime " +  '"' + junction_three_prime + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (noncanonical) then "--noncanonical" else ""} \
      ~{if defined(protein_databases) then ("--protein_databases " +  '"' + protein_databases + '"') else ""} \
      ~{if defined(re_color) then ("--recolor " +  '"' + re_color + '"') else ""} \
      ~{if defined(rename) then ("--rename " +  '"' + rename + '"') else ""} \
      ~{if defined(exclude_domain) then ("--exclude_domain " +  '"' + exclude_domain + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(font_size) then ("--fontsize " +  '"' + font_size + '"') else ""} \
      ~{if (wt) then "--WT" else ""} \
      ~{if (middle_star) then "--middlestar" else ""} \
      ~{if (no_domain_labels) then "--no_domain_labels" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""}
  >>>
  parameter_meta {
    gene_five_prime: "5' gene partner"
    gene_three_prime: "3' gene partner"
    junction_five_prime: "Genomic location of predicted fuins for the 5' gene\\npartner. The 1-based position that is the last\\nnucleotide included in the fusion before the junction."
    junction_three_prime: "Genomic location of predicted fuins for the 3' gene\\npartner. The 1-based position that is the first\\nnucleotide included in the fusion after the junction."
    database: "Path to the AGFusion database (e.g. --db\\n/path/to/agfusion.homo_sapiens.87.db)"
    out: "Directory to save results"
    noncanonical: "(Optional) Include non-canonical gene transcripts in\\nthe analysis (default False)."
    protein_databases: "(Optional) Space-delimited list of one or more protein\\nfeature databases to include when visualizing\\nproteins. Options are: pfam, smart, superfamily,\\ntigrfam, pfscan (Prosite_profiles), tmhmm (i.e.\\ntransmembrane), seg (low_complexity regions), ncoils\\n(coiled coil regions), prints, pirsf, and signalp\\n(signal peptide regions) (default: --protein_databases\\npfam and tmhmm)."
    re_color: "(Optional) Re-color a domain. Provide the original\\nname of the domain then your color (semi-colon\\ndelimited, all in quotes). Can specify --recolor\\nmultiples for each domain. (e.g. --color\\n\\\"Pkinase_Tyr;blue\\\" --color \\\"I-set;#006600\\\")."
    rename: "(Optional) Rename a domain. Provide the original name\\nof the domain then your new name (semi-colon\\ndelimited, all in quotes). Can specify --rename\\nmultiples for each domain. (e.g. --rename\\n\\\"Pkinase_Tyr;Kinase\\\")."
    exclude_domain: "(Optional) Exclude a certain domain(s) from plotting\\nby providing a space-separated list of domain names."
    type: "(Optional) Image file type (png, jpeg, pdf). Default:"
    height: "(Optional) Image file height in inches (default 3)."
    dpi: "(Optional) Dots per inch."
    font_size: "(Optional) Fontsize (default 12)."
    wt: "(Optional) Include this to plot wild-type\\narchitechtures of the 5' and 3' genes"
    middle_star: "(Optional) Insert a * at the junction position for the\\ncdna, cds, and protein sequences (default False)."
    no_domain_labels: "(Optional) Do not label domains."
    debug: "(Optional) Enable debugging logging."
    scale: "(Optional) Set maximum width (in amino acids) of the\\nfigure to rescale the fusion (default: max length of\\nfusion product)\\n"
    png: "-w WIDTH, --width WIDTH"
  }
  output {
    File out_stdout = stdout()
  }
}
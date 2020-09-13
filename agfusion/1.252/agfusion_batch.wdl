version 1.0

task AgfusionBatch {
  input {
    File? file
    String? algorithm
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
    String png
  }
  command <<<
    agfusion batch \
      ~{png} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
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
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    file: "Output file from fusion-finding algorithm."
    algorithm: "The fusion-finding algorithm. Can be one of the\\nfollowing: bellerophontes, breakfusion, chimerascan,\\nchimerscope, defuse, ericscript, fusioncatcher,\\nfusionhunter, fusionmap, fusioninspector, infusion,\\njaffa, mapsplice, starfusion, tophatfusion."
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
    png: "-w WIDTH, --width WIDTH"
  }
  output {
    File out_stdout = stdout()
    File out_file = "${in_file}"
  }
}
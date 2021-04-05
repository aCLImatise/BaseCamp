version 1.0

task AmptkTaxonomy {
  input {
    Boolean? fast_a
    Boolean? otu_table
    File? out
    Boolean? db
    Boolean? mapping_file
    Boolean? taxonomy
    Boolean? method
    Boolean? add_two_db
    Boolean? fast_a_db
    Boolean? u_tax_db
    Boolean? u_tax_cut_off
    Boolean? u_search_db
    Boolean? u_search_cut_off
    Boolean? sin_tax_db
    Boolean? sin_tax_cut_off
    Boolean? rdp
    Boolean? rdp_db
    Boolean? rdp_cut_off
    Boolean? local_blast
    Boolean? tax_filter
    Boolean? u_search
    Boolean? cpus
    Boolean? debug
    String arguments
  }
  command <<<
    amptk taxonomy \
      ~{arguments} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (otu_table) then "--otu_table" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (db) then "--db" else ""} \
      ~{if (mapping_file) then "--mapping_file" else ""} \
      ~{if (taxonomy) then "--taxonomy" else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (add_two_db) then "--add2db" else ""} \
      ~{if (fast_a_db) then "--fasta_db" else ""} \
      ~{if (u_tax_db) then "--utax_db" else ""} \
      ~{if (u_tax_cut_off) then "--utax_cutoff" else ""} \
      ~{if (u_search_db) then "--usearch_db" else ""} \
      ~{if (u_search_cut_off) then "--usearch_cutoff" else ""} \
      ~{if (sin_tax_db) then "--sintax_db" else ""} \
      ~{if (sin_tax_cut_off) then "--sintax_cutoff" else ""} \
      ~{if (rdp) then "--rdp" else ""} \
      ~{if (rdp_db) then "--rdp_db" else ""} \
      ~{if (rdp_cut_off) then "--rdp_cutoff" else ""} \
      ~{if (local_blast) then "--local_blast" else ""} \
      ~{if (tax_filter) then "--tax_filter" else ""} \
      ~{if (u_search) then "--usearch" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.2--py_0"
  }
  parameter_meta {
    fast_a: "Input FASTA file (i.e. OTUs from amptk cluster) (Required)"
    otu_table: "Input OTU table file (i.e. otu_table from amptk cluster)"
    out: "Base name for output file. Default: amptk-taxonomy.<method>.txt"
    db: "Select Pre-installed database [ITS1, ITS2, ITS, 16S, LSU, COI]. Default: ITS2"
    mapping_file: "QIIME-like mapping file"
    taxonomy: "Taxonomy calculated elsewhere. 2 Column file."
    method: "Taxonomy method. Default: hybrid [utax, sintax, usearch, hybrid, rdp, blast]"
    add_two_db: "Add FASTA files to DB on the fly."
    fast_a_db: "Alternative database of fasta sequenes to use for global alignment."
    u_tax_db: "UTAX formatted database. Default: ITS2.udb [See configured DB's below]"
    u_tax_cut_off: "UTAX confidence value threshold. Default: 0.8 [0 to 0.9]"
    u_search_db: "USEARCH formatted database. Default: USEARCH.udb"
    u_search_cut_off: "USEARCH threshold percent identity. Default 0.7"
    sin_tax_db: "VSEARCH formatted sintax database."
    sin_tax_cut_off: "SINTAX confidence value threshold. Default: 0.8 [0 to 0.9]"
    rdp: "Path to RDP Classifier. Required if --method rdp"
    rdp_db: "RDP Classifer DB set. [fungalits_unite, fungalits_warcup. fungallsu, 16srrna]"
    rdp_cut_off: "RDP Classifer confidence value threshold. Default: 0.8 [0 to 1.0]"
    local_blast: "Local Blast database (full path) Default: NCBI remote nt database"
    tax_filter: "Remove OTUs from OTU table that do not match filter, i.e. Fungi to keep only fungi."
    u_search: "USEARCH executable. Default: usearch9"
    cpus: "Number of CPUs to use. Default: all"
    debug: "Keep intermediate files"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}
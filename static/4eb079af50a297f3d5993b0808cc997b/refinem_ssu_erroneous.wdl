version 1.0

task RefinemSsuErroneous {
  input {
    String? genome_ext
    String? evalue
    String? concatenate
    String? common_tax_on
    String? ssu_min_len
    String? ssu_domain
    String? ssu_phylum
    String? ssu_class
    String? ssu_order
    String? ssu_family
    String? ssu_genus
    String? cpus
    Boolean? silent
    String genome_nt_dir
    String tax_on_profile_dir
    String ssu_db
    String ssu_taxonomy_file
    String output_dir
  }
  command <<<
    refinem ssu_erroneous \
      ~{genome_nt_dir} \
      ~{tax_on_profile_dir} \
      ~{ssu_db} \
      ~{ssu_taxonomy_file} \
      ~{output_dir} \
      ~{if defined(genome_ext) then ("--genome_ext " +  '"' + genome_ext + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(concatenate) then ("--concatenate " +  '"' + concatenate + '"') else ""} \
      ~{if defined(common_tax_on) then ("--common_taxon " +  '"' + common_tax_on + '"') else ""} \
      ~{if defined(ssu_min_len) then ("--ssu_min_len " +  '"' + ssu_min_len + '"') else ""} \
      ~{if defined(ssu_domain) then ("--ssu_domain " +  '"' + ssu_domain + '"') else ""} \
      ~{if defined(ssu_phylum) then ("--ssu_phylum " +  '"' + ssu_phylum + '"') else ""} \
      ~{if defined(ssu_class) then ("--ssu_class " +  '"' + ssu_class + '"') else ""} \
      ~{if defined(ssu_order) then ("--ssu_order " +  '"' + ssu_order + '"') else ""} \
      ~{if defined(ssu_family) then ("--ssu_family " +  '"' + ssu_family + '"') else ""} \
      ~{if defined(ssu_genus) then ("--ssu_genus " +  '"' + ssu_genus + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    genome_ext: "extension of genomes (other files in directory are ignored) (default: fna)"
    evalue: "e-value threshold for identifying and classifying 16S rRNA genes (default: 1e-05)"
    concatenate: "concatenate hits within the specified number of base pairs (default: 200)"
    common_tax_on: "threshold for defining a taxon as common (default: 10.0)"
    ssu_min_len: "minimum length of SSU 16S gene fragment to consider for classification (default: 600)"
    ssu_domain: "percent identity threshold for accepting domain classification of SSU (default: 83.68)"
    ssu_phylum: "percent identity threshold for accepting phylum classification of SSU (default: 86.35)"
    ssu_class: "percent identity threshold for accepting class classification of SSU (default: 89.2)"
    ssu_order: "percent identity threshold for accepting order classification of SSU (default: 92.25)"
    ssu_family: "percent identity threshold for accepting family classification of SSU (default: 96.4)"
    ssu_genus: "percent identity threshold for accepting genus classification of SSU (default: 98.7)"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output of logger"
    genome_nt_dir: "directory containing nucleotide scaffolds for each genome"
    tax_on_profile_dir: "directory with results of taxon_profile command"
    ssu_db: "BLAST database of 16S rRNA genes"
    ssu_taxonomy_file: "taxonomy file for genes in the 16S rRNA database"
    output_dir: "output directory"
  }
}
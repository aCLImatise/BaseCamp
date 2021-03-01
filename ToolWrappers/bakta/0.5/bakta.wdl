version 1.0

task Bakta {
  input {
    File? db
    Int? min_contig_length
    String? prefix
    Directory? output_directory_default
    String? genus
    String? species
    String? strain
    String? plasmid
    Boolean? complete
    File? prodigal_tf
    String? translation_table
    Boolean? gram
    String? locus
    String? locus_tag
    Boolean? keep_contig_headers
    String? replicons
    Boolean? skip_trna
    Boolean? skip_tmrna
    Boolean? skip_rrna
    Boolean? skip_ncrna
    Boolean? skip_ncrna_region
    Boolean? skip_crisp_r
    Boolean? skip_cds
    Boolean? skip_so_rf
    Boolean? skip_gap
    Boolean? skip_ori
    Boolean? verbose
    Int? threads
    String? tmp_dir
    Boolean? citation
  }
  command <<<
    bakta \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(min_contig_length) then ("--min-contig-length " +  '"' + min_contig_length + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(genus) then ("--genus " +  '"' + genus + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(plasmid) then ("--plasmid " +  '"' + plasmid + '"') else ""} \
      ~{if (complete) then "--complete" else ""} \
      ~{if defined(prodigal_tf) then ("--prodigal-tf " +  '"' + prodigal_tf + '"') else ""} \
      ~{if defined(translation_table) then ("--translation-table " +  '"' + translation_table + '"') else ""} \
      ~{if (gram) then "--gram" else ""} \
      ~{if defined(locus) then ("--locus " +  '"' + locus + '"') else ""} \
      ~{if defined(locus_tag) then ("--locus-tag " +  '"' + locus_tag + '"') else ""} \
      ~{if (keep_contig_headers) then "--keep-contig-headers" else ""} \
      ~{if defined(replicons) then ("--replicons " +  '"' + replicons + '"') else ""} \
      ~{if (skip_trna) then "--skip-trna" else ""} \
      ~{if (skip_tmrna) then "--skip-tmrna" else ""} \
      ~{if (skip_rrna) then "--skip-rrna" else ""} \
      ~{if (skip_ncrna) then "--skip-ncrna" else ""} \
      ~{if (skip_ncrna_region) then "--skip-ncrna-region" else ""} \
      ~{if (skip_crisp_r) then "--skip-crispr" else ""} \
      ~{if (skip_cds) then "--skip-cds" else ""} \
      ~{if (skip_so_rf) then "--skip-sorf" else ""} \
      ~{if (skip_gap) then "--skip-gap" else ""} \
      ~{if (skip_ori) then "--skip-ori" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bakta:0.5--py_0"
  }
  parameter_meta {
    db: "Database path (default = <bakta_path>/db)"
    min_contig_length: "Minimum contig size (default = 1)"
    prefix: "Prefix for output files"
    output_directory_default: "Output directory (default = current working directory)"
    genus: "Genus name"
    species: "Species name"
    strain: "Strain name"
    plasmid: "Plasmid name"
    complete: "All sequences are complete replicons\\n(chromosome/plasmid[s])"
    prodigal_tf: "Path to existing Prodigal training file to use for CDS\\nprediction"
    translation_table: "Translation table to use: 11/4 (default = 11)"
    gram: "{+,-,?}        Gram type: +/-/? (default = '?')"
    locus: "Locus prefix (instead of 'contig')"
    locus_tag: "Locus tag prefix"
    keep_contig_headers: "Keep original contig headers"
    replicons: "Replicon information table (TSV)"
    skip_trna: "Skip tRNA detection & annotation"
    skip_tmrna: "Skip tmRNA detection & annotation"
    skip_rrna: "Skip rRNA detection & annotation"
    skip_ncrna: "Skip ncRNA detection & annotation"
    skip_ncrna_region: "Skip ncRNA region detection & annotation"
    skip_crisp_r: "Skip CRISPR array detection & annotation"
    skip_cds: "Skip CDS detection & annotation"
    skip_so_rf: "Skip sORF detection & annotation"
    skip_gap: "Skip gap detection & annotation"
    skip_ori: "Skip oriC/oriT detection & annotation"
    verbose: "Print verbose information"
    threads: "Number of threads to use (default = number of\\navailable CPUs)"
    tmp_dir: "Location for temporary files (default = system\\ndependent auto detection)"
    citation: "Print citation"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}
version 1.0

task CheckmTaxonomyWf {
  input {
    Boolean? ali
    Boolean? nt
    Boolean? genes
    Boolean? individual_markers
    Boolean? skip_adj_correction
    Boolean? skip_pseudogene_correction
    Float? aai_strain
    File? alignment_file
    Boolean? ignore_thresholds
    Float? e_value
    Int? length
    File? coverage_file
    File? file
    Boolean? tab_table
    Directory? extension
    Int? threads
    Boolean? quiet
    Directory? tmpdir
  }
  command <<<
    checkm taxonomy_wf \
      ~{if (ali) then "--ali" else ""} \
      ~{if (nt) then "--nt" else ""} \
      ~{if (genes) then "--genes" else ""} \
      ~{if (individual_markers) then "--individual_markers" else ""} \
      ~{if (skip_adj_correction) then "--skip_adj_correction" else ""} \
      ~{if (skip_pseudogene_correction) then "--skip_pseudogene_correction" else ""} \
      ~{if defined(aai_strain) then ("--aai_strain " +  '"' + aai_strain + '"') else ""} \
      ~{if defined(alignment_file) then ("--alignment_file " +  '"' + alignment_file + '"') else ""} \
      ~{if (ignore_thresholds) then "--ignore_thresholds" else ""} \
      ~{if defined(e_value) then ("--e_value " +  '"' + e_value + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(coverage_file) then ("--coverage_file " +  '"' + coverage_file + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if (tab_table) then "--tab_table" else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    ali: "generate HMMER alignment file for each bin"
    nt: "generate nucleotide gene sequences for each bin"
    genes: "bins contain genes as amino acids instead of nucleotide contigs"
    individual_markers: "treat marker as independent (i.e., ignore co-located set structure)"
    skip_adj_correction: "do not exclude adjacent marker genes when estimating contamination"
    skip_pseudogene_correction: "skip identification and filtering of pseudogenes"
    aai_strain: "AAI threshold used to identify strain heterogeneity (default: 0.9)"
    alignment_file: "produce file showing alignment of multi-copy genes and their AAI identity"
    ignore_thresholds: "ignore model-specific score thresholds"
    e_value: "e-value cut off (default: 1e-10)"
    length: "percent overlap between target and query (default: 0.7)"
    coverage_file: "file containing coverage of each sequence; coverage information added to table type 2 (see coverage command)"
    file: "print results to file (default: stdout)"
    tab_table: "print tab-separated values table"
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    threads: "number of threads (default: 1)"
    quiet: "suppress console output"
    tmpdir: "specify an alternative directory for temporary files"
  }
  output {
    File out_stdout = stdout()
  }
}
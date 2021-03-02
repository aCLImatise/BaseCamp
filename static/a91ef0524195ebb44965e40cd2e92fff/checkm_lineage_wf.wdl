version 1.0

task CheckmLineageWf {
  input {
    Boolean? reduced_tree
    Boolean? ali
    Boolean? nt
    Boolean? genes
    Int? unique
    Int? multi
    Boolean? force_domain
    Boolean? no_refinement
    Boolean? individual_markers
    Boolean? skip_adj_correction
    Boolean? skip_pseudogene_correction
    Float? aai_strain
    File? alignment_file
    Boolean? ignore_thresholds
    Float? e_value
    Int? length
    File? print_results_file
    Boolean? tab_table
    Directory? extension
    Int? threads
    Int? p_placer_threads
    Boolean? quiet
    Directory? tmpdir
    String bin_dir
    String output_dir
  }
  command <<<
    checkm lineage_wf \
      ~{bin_dir} \
      ~{output_dir} \
      ~{if (reduced_tree) then "--reduced_tree" else ""} \
      ~{if (ali) then "--ali" else ""} \
      ~{if (nt) then "--nt" else ""} \
      ~{if (genes) then "--genes" else ""} \
      ~{if defined(unique) then ("--unique " +  '"' + unique + '"') else ""} \
      ~{if defined(multi) then ("--multi " +  '"' + multi + '"') else ""} \
      ~{if (force_domain) then "--force_domain" else ""} \
      ~{if (no_refinement) then "--no_refinement" else ""} \
      ~{if (individual_markers) then "--individual_markers" else ""} \
      ~{if (skip_adj_correction) then "--skip_adj_correction" else ""} \
      ~{if (skip_pseudogene_correction) then "--skip_pseudogene_correction" else ""} \
      ~{if defined(aai_strain) then ("--aai_strain " +  '"' + aai_strain + '"') else ""} \
      ~{if defined(alignment_file) then ("--alignment_file " +  '"' + alignment_file + '"') else ""} \
      ~{if (ignore_thresholds) then "--ignore_thresholds" else ""} \
      ~{if defined(e_value) then ("--e_value " +  '"' + e_value + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(print_results_file) then ("--file " +  '"' + print_results_file + '"') else ""} \
      ~{if (tab_table) then "--tab_table" else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(p_placer_threads) then ("--pplacer_threads " +  '"' + p_placer_threads + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reduced_tree: "use reduced tree (requires <16GB of memory) for determining lineage of each bin"
    ali: "generate HMMER alignment file for each bin"
    nt: "generate nucleotide gene sequences for each bin"
    genes: "bins contain genes as amino acids instead of nucleotide contigs"
    unique: "minimum number of unique phylogenetic markers required to use lineage-specific marker set (default: 10)"
    multi: "maximum number of multi-copy phylogenetic markers before defaulting to domain-level marker set (default: 10)"
    force_domain: "use domain-level sets for all bins"
    no_refinement: "do not perform lineage-specific marker set refinement"
    individual_markers: "treat marker as independent (i.e., ignore co-located set structure)"
    skip_adj_correction: "do not exclude adjacent marker genes when estimating contamination"
    skip_pseudogene_correction: "skip identification and filtering of pseudogenes"
    aai_strain: "AAI threshold used to identify strain heterogeneity (default: 0.9)"
    alignment_file: "produce file showing alignment of multi-copy genes and their AAI identity"
    ignore_thresholds: "ignore model-specific score thresholds"
    e_value: "e-value cut off (default: 1e-10)"
    length: "percent overlap between target and query (default: 0.7)"
    print_results_file: "print results to file (default: stdout)"
    tab_table: "print tab-separated values table"
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    threads: "number of threads (default: 1)"
    p_placer_threads: "number of threads used by pplacer (memory usage increases linearly with additional threads) (default: 1)"
    quiet: "suppress console output"
    tmpdir: "specify an alternative directory for temporary files"
    bin_dir: "directory containing bins (fasta format)"
    output_dir: "directory to write output files"
  }
  output {
    File out_stdout = stdout()
  }
}
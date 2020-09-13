version 1.0

task RunAbundancepy {
  input {
    Int? alignment_size
    Int? placement_size
    Int? fragment_chunksize
    Int? distance
    String? diameter
    Int? decomp_strategy
    File? tempdir
    String? output_files_prefix
    File? outdir
    File? config
    File? tree
    File? ra_xml
    File? alignment
    File? fragment
    String? molecule
    Int? cpu
    File? checkpoint
    Int? interval
    Int? random_seed
    Int? alignment_threshold
    Int? placement_threshold
    String? gene
    File? blast_file
    String? bin_using
    Boolean? dist
    Int? cut_off
    String? genes
    Boolean? v
  }
  command <<<
    run_abundance_py \
      ~{if defined(alignment_size) then ("--alignmentSize " +  '"' + alignment_size + '"') else ""} \
      ~{if defined(placement_size) then ("--placementSize " +  '"' + placement_size + '"') else ""} \
      ~{if defined(fragment_chunksize) then ("--fragmentChunkSize " +  '"' + fragment_chunksize + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(diameter) then ("--diameter " +  '"' + diameter + '"') else ""} \
      ~{if defined(decomp_strategy) then ("--decomp_strategy " +  '"' + decomp_strategy + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(output_files_prefix) then ("--output " +  '"' + output_files_prefix + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(ra_xml) then ("--raxml " +  '"' + ra_xml + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(fragment) then ("--fragment " +  '"' + fragment + '"') else ""} \
      ~{if defined(molecule) then ("--molecule " +  '"' + molecule + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(checkpoint) then ("--checkpoint " +  '"' + checkpoint + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(random_seed) then ("--randomseed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(alignment_threshold) then ("--alignmentThreshold " +  '"' + alignment_threshold + '"') else ""} \
      ~{if defined(placement_threshold) then ("--placementThreshold " +  '"' + placement_threshold + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(blast_file) then ("--blast_file " +  '"' + blast_file + '"') else ""} \
      ~{if defined(bin_using) then ("--bin_using " +  '"' + bin_using + '"') else ""} \
      ~{if (dist) then "--dist" else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    alignment_size: "max alignment subset size of N [default: 10% of the\\ntotal number of taxa or the placement subset size if\\ngiven]"
    placement_size: "max placement subset size of N [default: 10% of the\\ntotal number of taxa or the alignment length\\n(whichever bigger)]"
    fragment_chunksize: "maximum fragment chunk size of N. Helps controlling\\nmemory. [default: 20000]"
    distance: "minimum p-distance before stopping the\\ndecomposition[default: 1]"
    diameter: "maximum tree diameter before stopping the\\ndecomposition[default: None]"
    decomp_strategy: "decomposition strategy [default: using tree branch\\nlength]"
    tempdir: "Tempfile files will be written to DIR. Full-path\\nrequired. [default: /tmp/sepp]"
    output_files_prefix: "output files with prefix OUTPUT. [default: output]"
    outdir: "output to OUTPUT_DIR directory. full-path required.\\n[default: .]"
    config: "A config file, including options used to run SEPP.\\nOptions provided as command line arguments overwrite\\nconfig file values for those options. [default: None]"
    tree: "Input tree file (newick format) [default: None]"
    ra_xml: "RAxML_info file including model parameters, generated\\nby RAxML.[default: None]"
    alignment: "Aligned fasta file [default: None]"
    fragment: "fragment file [default: None]"
    molecule: "Molecule type of sequences. Can be amino, dna, or rna\\n[default: dna]"
    cpu: "Use N cpus [default: number of cpus available on the\\nmachine]"
    checkpoint: "checkpoint file [default: no checkpointing]"
    interval: "Interval (in seconds) between checkpoint writes. Has\\neffect only with -cp provided. [default: 3600]"
    random_seed: "random seed number. [default: 297834]"
    alignment_threshold: "Enough alignment subsets are selected to reach a\\ncommulative probability of N. This should be a number\\nbetween 0 and 1 [default: 0.95]"
    placement_threshold: "Enough placements are selected to reach a commulative\\nprobability of N. This should be a number between 0\\nand 1 [default: 0.95]"
    gene: "Classify on only the specified gene."
    blast_file: "Blast file with fragments already binned."
    bin_using: "Tool for binning"
    dist: "Treat fragments as distribution"
    cut_off: "Placement probability requirement to count toward the\\ndistribution. This should be a number between 0 and 1\\n[default: 0.0]"
    genes: "Use markers or cogs genes [default: markers]\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}
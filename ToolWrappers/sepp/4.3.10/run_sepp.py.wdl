version 1.0

task RunSepppy {
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
    Boolean? v
  }
  command <<<
    run_sepp_py \
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
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    random_seed: "random seed number. [default: 297834]\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}
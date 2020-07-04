version 1.0

task RunUpp.py {
  input {
    String? fragment_chunksize
    String? distance
    String? diameter
    String? alignment_size
    String? median_full_length
    String? backbone_threshold
    String? backbone_size
    String? decomp_strategy
    String? tempdir
    String? output_files_output
    String? outdir
    String? molecule
    String? sequence_file
    String? config
    String? tree
    String? alignment
    String? cpu
    String? checkpoint
    String? interval
    String? random_seed
    String? longbranch_filter
    String? placement_size
    String? ra_xml
    String? fragment
    Boolean? v
  }
  command <<<
    run_upp.py \
      ~{if defined(fragment_chunksize) then ("--fragmentChunkSize " +  '"' + fragment_chunksize + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(diameter) then ("--diameter " +  '"' + diameter + '"') else ""} \
      ~{if defined(alignment_size) then ("--alignmentSize " +  '"' + alignment_size + '"') else ""} \
      ~{if defined(median_full_length) then ("--median_full_length " +  '"' + median_full_length + '"') else ""} \
      ~{if defined(backbone_threshold) then ("--backbone_threshold " +  '"' + backbone_threshold + '"') else ""} \
      ~{if defined(backbone_size) then ("--backboneSize " +  '"' + backbone_size + '"') else ""} \
      ~{if defined(decomp_strategy) then ("--decomp_strategy " +  '"' + decomp_strategy + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(output_files_output) then ("--output " +  '"' + output_files_output + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(molecule) then ("--molecule " +  '"' + molecule + '"') else ""} \
      ~{if defined(sequence_file) then ("--sequence_file " +  '"' + sequence_file + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(checkpoint) then ("--checkpoint " +  '"' + checkpoint + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(random_seed) then ("--randomseed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(longbranch_filter) then ("--longbranchfilter " +  '"' + longbranch_filter + '"') else ""} \
      ~{if defined(placement_size) then ("--placementSize " +  '"' + placement_size + '"') else ""} \
      ~{if defined(ra_xml) then ("--raxml " +  '"' + ra_xml + '"') else ""} \
      ~{if defined(fragment) then ("--fragment " +  '"' + fragment + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    fragment_chunksize: "maximum fragment chunk size of N. Helps controlling memory. [default: 20000]"
    distance: "minimum p-distance before stopping the decomposition[default: 1]"
    diameter: "maximum tree diameter before stopping the decomposition[default: None]"
    alignment_size: "max alignment subset size of N [default: 10]"
    median_full_length: "Consider all fragments that are 25% longer or shorter than N to be excluded from the backbone. If value is -1, then UPP will use the median of the sequences as the median full length [default: None]"
    backbone_threshold: "Only consider sequences with lengths within (1-N)*M and (1+N)*M as full-length, where M is the median length of the full-length sequence given by the -M option and N is the percentage given by the -T option.[default: 0.25]"
    backbone_size: "(Optional) size of backbone set. If no backbone tree and alignment is given, the sequence file will be randomly split into a backbone set (size set to N) and query set (remaining sequences), [default: min(1000,input size)]"
    decomp_strategy: "decomposition strategy [default: ensemble of HMMs (hierarchical)]"
    tempdir: "Tempfile files will be written to DIR. Full-path required. [default: /tmp/sepp]"
    output_files_output: "output files with prefix OUTPUT. [default: output]"
    outdir: "output to OUTPUT_DIR directory. full-path required. [default: .]"
    molecule: "Molecule type of sequences. Can be amino, dna, or rna [default: dna]"
    sequence_file: "Unaligned sequence file. If no backbone tree and alignment is given, the sequence file will be randomly split into a backbone set (size set to B) and query set (remaining sequences), [default: None]"
    config: "A config file, including options used to run UPP. Options provided as command line arguments overwrite config file values for those options. [default: None]"
    tree: "Input tree file (newick format) [default: None]"
    alignment: "Aligned fasta file [default: None]"
    cpu: "Use N cpus [default: number of cpus available on the machine]"
    checkpoint: "checkpoint file [default: no checkpointing]"
    interval: "Interval (in seconds) between checkpoint writes. Has effect only with -cp provided. [default: 3600]"
    random_seed: "random seed number. [default: 297834]"
    longbranch_filter: "Branches longer than N times the median branch length are filtered from backbone and added to fragments. [default: None (no filtering)]"
    placement_size: "max placement subset size of N [default: 10% of the total number of taxa]"
    ra_xml: "RAxML_info file including model parameters, generated by RAxML.[default: None]"
    fragment: "fragment file [default: None]"
    v: ""
  }
}
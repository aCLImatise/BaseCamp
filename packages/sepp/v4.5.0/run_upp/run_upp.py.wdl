version 1.0

task RunUpppy {
  input {
    Int? fragment_chunksize
    Int? distance
    String? diameter
    Int? alignment_size
    Boolean? only_consider_nmin
    Int? median_full_length
    Int? backbone_threshold
    Int? backbone_size
    String? decomp_strategy
    File? tempdir
    Boolean? rem_temp
    String? output_files_prefix
    File? outdir
    String? molecule
    Boolean? ignore_overlap
    Int? sequence_file
    File? config
    File? tree
    File? alignment
    File? back_translation
    Int? cpu
    File? checkpoint
    Int? interval
    Int? random_seed
    Int? longbranch_filter
    Int? placement_size
    File? ra_xml
    File? fragment
    Boolean? v
  }
  command <<<
    run_upp_py \
      ~{if defined(fragment_chunksize) then ("--fragmentChunkSize " +  '"' + fragment_chunksize + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(diameter) then ("--diameter " +  '"' + diameter + '"') else ""} \
      ~{if defined(alignment_size) then ("--alignmentSize " +  '"' + alignment_size + '"') else ""} \
      ~{if (only_consider_nmin) then "-R" else ""} \
      ~{if defined(median_full_length) then ("--median_full_length " +  '"' + median_full_length + '"') else ""} \
      ~{if defined(backbone_threshold) then ("--backbone_threshold " +  '"' + backbone_threshold + '"') else ""} \
      ~{if defined(backbone_size) then ("--backboneSize " +  '"' + backbone_size + '"') else ""} \
      ~{if defined(decomp_strategy) then ("--decomp_strategy " +  '"' + decomp_strategy + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if (rem_temp) then "--remtemp" else ""} \
      ~{if defined(output_files_prefix) then ("--output " +  '"' + output_files_prefix + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(molecule) then ("--molecule " +  '"' + molecule + '"') else ""} \
      ~{if (ignore_overlap) then "--ignore-overlap" else ""} \
      ~{if defined(sequence_file) then ("--sequence_file " +  '"' + sequence_file + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(back_translation) then ("--backtranslation " +  '"' + back_translation + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(checkpoint) then ("--checkpoint " +  '"' + checkpoint + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(random_seed) then ("--randomseed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(longbranch_filter) then ("--longbranchfilter " +  '"' + longbranch_filter + '"') else ""} \
      ~{if defined(placement_size) then ("--placementSize " +  '"' + placement_size + '"') else ""} \
      ~{if defined(ra_xml) then ("--raxml " +  '"' + ra_xml + '"') else ""} \
      ~{if defined(fragment) then ("--fragment " +  '"' + fragment + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:v4.5.0--py37_0"
  }
  parameter_meta {
    fragment_chunksize: "maximum fragment chunk size of N. Helps controlling\\nmemory. [default: 20000]"
    distance: "minimum p-distance before stopping the\\ndecomposition[default: 1]"
    diameter: "maximum tree diameter before stopping the\\ndecomposition[default: None]"
    alignment_size: "max alignment subset size of N [default: 10]"
    only_consider_nmin: "\\\"Nmin Nmax\\\", --full_length_range \\\"Nmin Nmax\\\"\\nOnly consider sequences with lengths within Nmin and\\nNmax"
    median_full_length: "Consider all fragments that are 25% longer or shorter\\nthan N to be excluded from the backbone. If value is\\n-1, then UPP will use the median of the sequences as\\nthe median full length [default: None]"
    backbone_threshold: "Only consider sequences with lengths within (1-N)*M\\nand (1+N)*M as full-length, where M is the median\\nlength of the full-length sequence given by the -M\\noption and N is the percentage given by the -T\\noption.[default: 0.25]"
    backbone_size: "(Optional) size of backbone set. If no backbone tree\\nand alignment is given, the sequence file will be\\nrandomly split into a backbone set (size set to N) and\\nquery set (remaining sequences), [default:\\nmin(1000,input size)]"
    decomp_strategy: "decomposition strategy [default: ensemble of HMMs\\n(hierarchical)]"
    tempdir: "Tempfile files will be written to DIR. Full-path\\nrequired. [default: /tmp/sepp]"
    rem_temp: "Remove tempfile directory. [default: disabled]"
    output_files_prefix: "output files with prefix OUTPUT. [default: output]"
    outdir: "output to OUTPUT_DIR directory. full-path required.\\n[default: .]"
    molecule: "Molecule type of sequences. Can be amino, dna, or rna\\n[default: dna]"
    ignore_overlap: "When a query sequence has the same name as a backbone\\nsequence, ignore the query sequences and keep the\\nbackbone sequence[default: False]"
    sequence_file: "Unaligned sequence file. If no backbone tree and\\nalignment is given, the sequence file will be randomly\\nsplit into a backbone set (size set to B) and query\\nset (remaining sequences), [default: None]"
    config: "A config file, including options used to run UPP.\\nOptions provided as command line arguments overwrite\\nconfig file values for those options. [default: None]"
    tree: "Input tree file (newick format) [default: None]"
    alignment: "Aligned fasta file [default: None]"
    back_translation: "Fasta file containing unaligned DNA sequences\\ncorresponding every reference and query sequence\\n[default: None]"
    cpu: "Use N cpus [default: number of cpus available on the\\nmachine]"
    checkpoint: "checkpoint file [default: no checkpointing]"
    interval: "Interval (in seconds) between checkpoint writes. Has\\neffect only with -cp provided. [default: 3600]"
    random_seed: "random seed number. [default: 297834]"
    longbranch_filter: "Branches longer than N times the median branch length\\nare filtered from backbone and added to fragments.\\n[default: None (no filtering)]"
    placement_size: "max placement subset size of N [default: 10% of the\\ntotal number of taxa]"
    ra_xml: "RAxML_info file including model parameters, generated\\nby RAxML.[default: None]"
    fragment: "fragment file [default: None]\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}
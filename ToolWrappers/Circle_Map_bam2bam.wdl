version 1.0

task CircleMapBam2bam {
  input {
    Boolean? input_bam_file
    Boolean? fast_a
    Boolean? _output_name
    Boolean? _nhits_number
    Boolean? _cutoff_probability
    Boolean? _minsc_minimum
    Boolean? _gapopen_gap
    Boolean? _gapext_penalty
    Boolean? _mapq_minimum
    Boolean? _editdistancefractionmaximum_edit
    Boolean? _splitqualityminium_split
    Boolean? remap_splits
    Boolean? iq
    Boolean? sd
    Boolean? _samplesize_number
    Boolean? _intervalprobabilityskip_edges
    Boolean? _clusteringdistcluster_reads
    Boolean? only_discordant_s
    Boolean? _threads_number
    Boolean? dir
    Boolean? _verbose_verbose
    String read_extractor
  }
  command <<<
    Circle_Map bam2bam \
      ~{read_extractor} \
      ~{if (input_bam_file) then "-i" else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (_output_name) then "-o" else ""} \
      ~{if (_nhits_number) then "-n" else ""} \
      ~{if (_cutoff_probability) then "-p" else ""} \
      ~{if (_minsc_minimum) then "-m" else ""} \
      ~{if (_gapopen_gap) then "-g" else ""} \
      ~{if (_gapext_penalty) then "-e" else ""} \
      ~{if (_mapq_minimum) then "-q" else ""} \
      ~{if (_editdistancefractionmaximum_edit) then "-d" else ""} \
      ~{if (_splitqualityminium_split) then "-Q" else ""} \
      ~{if (remap_splits) then "--remap_splits" else ""} \
      ~{if (iq) then "-iq" else ""} \
      ~{if (sd) then "-sd" else ""} \
      ~{if (_samplesize_number) then "-s" else ""} \
      ~{if (_intervalprobabilityskip_edges) then "-P" else ""} \
      ~{if (_clusteringdistcluster_reads) then "-K" else ""} \
      ~{if (only_discordant_s) then "--only_discordants" else ""} \
      ~{if (_threads_number) then "-t" else ""} \
      ~{if (dir) then "-dir" else ""} \
      ~{if (_verbose_verbose) then "-v" else ""}
  >>>
  parameter_meta {
    input_bam_file: "Input: bam file containing the reads extracted by"
    fast_a: "Input: Reference genome fasta file"
    _output_name: ", --output         Output BAM name"
    _nhits_number: ", --nhits          Number of realignment attempts. Default: 10"
    _cutoff_probability: ", --cut_off        Probability cut-off for considering a soft-clipped as\\nrealigned: Default: 0.99"
    _minsc_minimum: ", --min_sc         Minimum soft-clipped length to attempt the\\nrealignment. Default: 8"
    _gapopen_gap: ", --gap_open       Gap open penalty in the position specific scoring\\nmatrix. Default: 5"
    _gapext_penalty: ", --gap_ext        Gap extension penalty in the position specific scoring\\nmatrix. Default: 1"
    _mapq_minimum: ", --mapq           Minimum mapping quality allowed in the supplementary\\nalignments. Default: 20"
    _editdistancefractionmaximum_edit: ", --edit_distance-fraction\\nMaximum edit distance fraction allowed in the first\\nrealignment. Default (0.05)"
    _splitqualityminium_split: ", --split_quality\\nMinium split score to output an interval. Default\\n(0.0)"
    remap_splits: "Remap probabilistacally bwa-mem split reads"
    iq: ", --insert_mapq   Mapq cutoff for stimating the insert size\\ndistribution. Default 60"
    sd: ", --std           Standard deviations of the insert size to extend the\\nintervals. Default 5"
    _samplesize_number: ", --sample_size    Number of concordant reads (R2F1) to use for\\nestimating the insert size distribution. Default\\n100000"
    _intervalprobabilityskip_edges: ", --interval_probability\\nSkip edges of the graph with a probability below the\\nthreshold. Default: 0.01"
    _clusteringdistcluster_reads: ", --clustering_dist\\nCluster reads that are K nucleotides appart in the\\nsame node. Default: 500"
    only_discordant_s: "Use only discordant reads to build the graph"
    _threads_number: ", --threads        Number of threads to use.Default 1"
    dir: ", --directory    Working directory, default is the working directory"
    _verbose_verbose: ", --verbose        Verbose level, 1=error,2=warning, 3=message"
    read_extractor: "-qbam                 Input: query name sorted bam file"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task SvimAlignment {
  input {
    Boolean? verbose
    Int? min_mapq
    Int? min_sv_size
    Int? max_sv_size
    String? segment_gap_tolerance
    String? segment_overlap_tolerance
    String? partition_max_distance
    String? distance_normalizer
    String? cluster_max_distance
    Boolean? all_b_nds
    String? del_ins_dup_max_distance
    String? trans_destination_partition_max_distance
    String? trans_partition_max_distance
    String? trans_sv_max_distance
    Boolean? skip_genotyping
    Int? minimum_score
    String? homozygous_threshold
    String? heterozygous_threshold
    Int? minimum_depth
    String? sample
    String? types
    Boolean? sequence_alleles
    Boolean? insertion_sequences
    Boolean? tandem_duplications_as_insertions
    Boolean? interspersed_duplications_as_insertions
    Boolean? read_names
    Boolean? z_mws
    String working_dir
    String bam_file
    String genome
  }
  command <<<
    svim alignment \
      ~{working_dir} \
      ~{bam_file} \
      ~{genome} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_sv_size) then ("--min_sv_size " +  '"' + min_sv_size + '"') else ""} \
      ~{if defined(max_sv_size) then ("--max_sv_size " +  '"' + max_sv_size + '"') else ""} \
      ~{if defined(segment_gap_tolerance) then ("--segment_gap_tolerance " +  '"' + segment_gap_tolerance + '"') else ""} \
      ~{if defined(segment_overlap_tolerance) then ("--segment_overlap_tolerance " +  '"' + segment_overlap_tolerance + '"') else ""} \
      ~{if defined(partition_max_distance) then ("--partition_max_distance " +  '"' + partition_max_distance + '"') else ""} \
      ~{if defined(distance_normalizer) then ("--distance_normalizer " +  '"' + distance_normalizer + '"') else ""} \
      ~{if defined(cluster_max_distance) then ("--cluster_max_distance " +  '"' + cluster_max_distance + '"') else ""} \
      ~{true="--all_bnds" false="" all_b_nds} \
      ~{if defined(del_ins_dup_max_distance) then ("--del_ins_dup_max_distance " +  '"' + del_ins_dup_max_distance + '"') else ""} \
      ~{if defined(trans_destination_partition_max_distance) then ("--trans_destination_partition_max_distance " +  '"' + trans_destination_partition_max_distance + '"') else ""} \
      ~{if defined(trans_partition_max_distance) then ("--trans_partition_max_distance " +  '"' + trans_partition_max_distance + '"') else ""} \
      ~{if defined(trans_sv_max_distance) then ("--trans_sv_max_distance " +  '"' + trans_sv_max_distance + '"') else ""} \
      ~{true="--skip_genotyping" false="" skip_genotyping} \
      ~{if defined(minimum_score) then ("--minimum_score " +  '"' + minimum_score + '"') else ""} \
      ~{if defined(homozygous_threshold) then ("--homozygous_threshold " +  '"' + homozygous_threshold + '"') else ""} \
      ~{if defined(heterozygous_threshold) then ("--heterozygous_threshold " +  '"' + heterozygous_threshold + '"') else ""} \
      ~{if defined(minimum_depth) then ("--minimum_depth " +  '"' + minimum_depth + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{true="--sequence_alleles" false="" sequence_alleles} \
      ~{true="--insertion_sequences" false="" insertion_sequences} \
      ~{true="--tandem_duplications_as_insertions" false="" tandem_duplications_as_insertions} \
      ~{true="--interspersed_duplications_as_insertions" false="" interspersed_duplications_as_insertions} \
      ~{true="--read_names" false="" read_names} \
      ~{true="--zmws" false="" z_mws}
  >>>
  parameter_meta {
    verbose: "Enable more verbose logging (default: False)"
    min_mapq: "Minimum mapping quality of reads to consider (default: 20). Reads with a lower mapping quality are ignored."
    min_sv_size: "Minimum SV size to detect (default: 40). SVIM can potentially detect events of any size but is limited by the signal-to-noise ratio in the input alignments. That means that more accurate reads and alignments enable the detection of smaller events. For current PacBio or Nanopore data, we would recommend a minimum size of 40bp or larger."
    max_sv_size: "Maximum SV size to detect (default: 100000). This parameter is used to distinguish long deletions (and inversions) from translocations which cannot be distinguished from the alignment alone. Split read segments mapping far apart on the reference could either indicate a very long deletion (inversion) or a translocation breakpoint. SVIM calls a translocation breakpoint if the mapping distance is larger than this parameter and a deletion (or inversion) if it is smaller or equal."
    segment_gap_tolerance: "Maximum tolerated gap between adjacent alignment segments (default: 10). This parameter applies to gaps on the reference and the read. Example: Deletions are detected from two subsequent segments of a split read that are mapped far apart from each other on the reference. The segment gap tolerance determines the maximum tolerated length of the read gap between both segments. If there is an unaligned read segment larger than this value between the two segments, no deletion is called."
    segment_overlap_tolerance: "Maximum tolerated overlap between adjacent alignment segments (default: 5). This parameter applies to overlaps on the reference and the read. Example: Deletions are detected from two subsequent segments of a split read that are mapped far apart from each other on the reference. The segment overlap tolerance determines the maximum tolerated length of an overlap between both segments on the read. If the overlap between the two segments on the read is larger than this value, no deletion is called."
    partition_max_distance: "Maximum distance in bp between SVs in a partition (default: 1000). Before clustering, the SV signatures are divided into coarse partitions. This parameter determines the maximum distance between two subsequent signatures in the same partition. If the distance between two subsequent signatures is larger than this parameter, they are distributed into separate partitions."
    distance_normalizer: "Distance normalizer used for span-position distance (default: 900). SVIM clusters the SV signatures using an hierarchical clustering approach and a novel distance metric called \"span-position distance\". Span- position distance is the sum of two components, span distance and position distance. The span distance is the difference in lengths between signatures normalized by the greater length and always lies in the interval [0,1]. The position distance is the difference in position between signatures normalized by the distance normalizer (this parameter). For a position difference of 1.8kb and a distance normalizer of 900, the position distance will be 2. A smaller distance normalizer leads to a higher position distance and as a consequence increases the importance of the position distance in the span-position distance relative to the span distance."
    cluster_max_distance: "Maximum span-position distance between SVs in a cluster (default: 0.3). This is the most important parameter because it determines the strictness of clustering. Choosing a large value leads to fewer but larger clusters with larger distances between its members. Choosing a small value leads to more but smaller clusters with smaller distances between its members. This parameter determines the height of the cut-off in the hierarchical clustering dendrogram."
    all_b_nds: "Output all rearrangements additionally in BND notation (default: False). By default, SV signatures from the read alignments are used to detect complete SVs, such as deletions, insertions and inversions. When this option is enabled, all SVs are also output in breakend (BND) notation as defined in the VCF specs. For instance, a deletion gets two records in the VCF output: 1. the normal <DEL> record and 2. a <BND> record representing the novel adjacency between the deletion's start and end coordinate in the sample genome."
    del_ins_dup_max_distance: "Maximum span-position distance between the origin of an insertion and a deletion to be flagged as a potential cut&paste insertion (default: 1.0)"
    trans_destination_partition_max_distance: "Maximum distance in bp between translocation breakpoint destinations in a partition (default: 1000)"
    trans_partition_max_distance: "Maximum distance in bp between translocation breakpoints in a partition (default: 200)"
    trans_sv_max_distance: "Maximum distance in bp between a translocation breakpoint and an SV signature to be combined (default: 500)"
    skip_genotyping: "Disable genotyping (default: False)"
    minimum_score: "Minimum score for genotyping (default: 3). Only SV candidates with a higher or equal score are genotyped. Depending on the score distribution among the SV candidates, decreasing this value increases the runtime. We recommend to choose a value close to the score threshold used for filtering the SV candidates."
    homozygous_threshold: "Minimum variant allele frequency to be called as homozygous (default: 0.8). Allele frequency is computed as the fraction of reads supporting the variant over the total number of reads covering the variant. Variants with an allele frequence greater than or equal to this threshold are called as homozygous alternative."
    heterozygous_threshold: "Minimum variant allele frequency to be called as heterozygous (default: 0.2). Allele frequency is computed as the fraction of reads supporting the variant over the total number of reads covering the variant. Variants with an allele frequence greater than or equal to this threshold but lower than the homozygous threshold are called as heterozygous alternative. Variants with an allele frequence lower than this threshold are called as homozygous reference."
    minimum_depth: "Minimum total read depth for genotyping (default: 4). Variants covered by a total number of reads lower than this value are not assigned a genotype (./. in the output VCF file)."
    sample: "Sample ID to include in output vcf file (default: Sample)"
    types: "SV types to include in output VCF (default: DEL,INS,INV,DUP:TANDEM,DUP:INT,BND). Give a comma- separated list of SV types. The possible SV types are: DEL (deletions), INS (novel insertions), INV (inversions), DUP:TANDEM (tandem duplications), DUP:INT (interspersed duplications), BND (breakends)."
    sequence_alleles: "Use nucleotide sequences for alleles of deletions, inversions and insertions in output VCF (default: False). By default, all SVs are represented by symbolic alleles, such as <DEL>, <INV> or <INS>. If enabled, ALT alleles of insertions are obtained from the sequence of a random read that supports the variant."
    insertion_sequences: "Output insertion sequences in INFO tag of VCF (default: False). If enabled, the INFO/SEQS tag contains a list of insertion sequences from the supporting reads. However, the insertion sequences are not combined into a consensus sequence."
    tandem_duplications_as_insertions: "Represent tandem duplications as insertions in output VCF (default: False). By default, tandem duplications are represented by the SVTYPE=DUP:TANDEM and the genomic source is given by the POS and END tags. When enabling this option, duplications are instead represented by the SVTYPE=INS and POS and END both give the insertion point of the duplication."
    interspersed_duplications_as_insertions: "Represent interspersed duplications as insertions in output VCF (default: False). By default, interspersed duplications are represented by the SVTYPE=DUP:INT and the genomic source is given by the POS and END tags. When enabling this option, duplications are instead represented by the SVTYPE=INS and POS and END both give the insertion point of the duplication."
    read_names: "Output names of supporting reads in INFO tag of VCF (default: False). If enabled, the INFO/READS tag contains the list of names of the supporting reads."
    z_mws: "look for information on ZMWs in PacBio read names (default: False). If enabled, the INFO/ZMWS tag contains the number of ZMWs that produced supporting reads."
    working_dir: "Working and output directory. Existing files in the directory are overwritten. If the directory does not exist, it is created."
    bam_file: "Coordinate-sorted and indexed BAM file with aligned long reads"
    genome: "Reference genome file that the long reads were aligned to (FASTA)"
  }
}
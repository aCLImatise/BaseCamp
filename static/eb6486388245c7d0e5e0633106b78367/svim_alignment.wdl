version 1.0

task SvimAlignment {
  input {
    Int? min_mapq
    Int? min_sv_size
    Int? max_sv_size
    Int? segment_gap_tolerance
    Int? segment_overlap_tolerance
    Int? partition_max_distance
    Int? distance_normalizer
    Int? cluster_max_distance
    Int? del_ins_dup_max_distance
    Int? trans_destination_partition_max_distance
    Int? trans_partition_max_distance
    Int? trans_sv_max_distance
    Boolean? skip_genotyping
    Int? minimum_score
    Int? homozygous_threshold
    Int? heterozygous_threshold
    Int? minimum_depth
    File? sample
    Int? types
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
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_sv_size) then ("--min_sv_size " +  '"' + min_sv_size + '"') else ""} \
      ~{if defined(max_sv_size) then ("--max_sv_size " +  '"' + max_sv_size + '"') else ""} \
      ~{if defined(segment_gap_tolerance) then ("--segment_gap_tolerance " +  '"' + segment_gap_tolerance + '"') else ""} \
      ~{if defined(segment_overlap_tolerance) then ("--segment_overlap_tolerance " +  '"' + segment_overlap_tolerance + '"') else ""} \
      ~{if defined(partition_max_distance) then ("--partition_max_distance " +  '"' + partition_max_distance + '"') else ""} \
      ~{if defined(distance_normalizer) then ("--distance_normalizer " +  '"' + distance_normalizer + '"') else ""} \
      ~{if defined(cluster_max_distance) then ("--cluster_max_distance " +  '"' + cluster_max_distance + '"') else ""} \
      ~{if defined(del_ins_dup_max_distance) then ("--del_ins_dup_max_distance " +  '"' + del_ins_dup_max_distance + '"') else ""} \
      ~{if defined(trans_destination_partition_max_distance) then ("--trans_destination_partition_max_distance " +  '"' + trans_destination_partition_max_distance + '"') else ""} \
      ~{if defined(trans_partition_max_distance) then ("--trans_partition_max_distance " +  '"' + trans_partition_max_distance + '"') else ""} \
      ~{if defined(trans_sv_max_distance) then ("--trans_sv_max_distance " +  '"' + trans_sv_max_distance + '"') else ""} \
      ~{if (skip_genotyping) then "--skip_genotyping" else ""} \
      ~{if defined(minimum_score) then ("--minimum_score " +  '"' + minimum_score + '"') else ""} \
      ~{if defined(homozygous_threshold) then ("--homozygous_threshold " +  '"' + homozygous_threshold + '"') else ""} \
      ~{if defined(heterozygous_threshold) then ("--heterozygous_threshold " +  '"' + heterozygous_threshold + '"') else ""} \
      ~{if defined(minimum_depth) then ("--minimum_depth " +  '"' + minimum_depth + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{if (sequence_alleles) then "--sequence_alleles" else ""} \
      ~{if (insertion_sequences) then "--insertion_sequences" else ""} \
      ~{if (tandem_duplications_as_insertions) then "--tandem_duplications_as_insertions" else ""} \
      ~{if (interspersed_duplications_as_insertions) then "--interspersed_duplications_as_insertions" else ""} \
      ~{if (read_names) then "--read_names" else ""} \
      ~{if (z_mws) then "--zmws" else ""}
  >>>
  parameter_meta {
    min_mapq: "Minimum mapping quality of reads to consider (default:\\n20). Reads with a lower mapping quality are ignored."
    min_sv_size: "Minimum SV size to detect (default: 40). SVIM can\\npotentially detect events of any size but is limited\\nby the signal-to-noise ratio in the input alignments.\\nThat means that more accurate reads and alignments\\nenable the detection of smaller events. For current\\nPacBio or Nanopore data, we would recommend a minimum\\nsize of 40bp or larger."
    max_sv_size: "Maximum SV size to detect (default: 100000). This\\nparameter is used to distinguish long deletions (and\\ninversions) from translocations which cannot be\\ndistinguished from the alignment alone. Split read\\nsegments mapping far apart on the reference could\\neither indicate a very long deletion (inversion) or a\\ntranslocation breakpoint. SVIM calls a translocation\\nbreakpoint if the mapping distance is larger than this\\nparameter and a deletion (or inversion) if it is\\nsmaller or equal."
    segment_gap_tolerance: "Maximum tolerated gap between adjacent alignment\\nsegments (default: 10). This parameter applies to gaps\\non the reference and the read. Example: Deletions are\\ndetected from two subsequent segments of a split read\\nthat are mapped far apart from each other on the\\nreference. The segment gap tolerance determines the\\nmaximum tolerated length of the read gap between both\\nsegments. If there is an unaligned read segment larger\\nthan this value between the two segments, no deletion\\nis called."
    segment_overlap_tolerance: "Maximum tolerated overlap between adjacent alignment\\nsegments (default: 5). This parameter applies to\\noverlaps on the reference and the read. Example:\\nDeletions are detected from two subsequent segments of\\na split read that are mapped far apart from each other\\non the reference. The segment overlap tolerance\\ndetermines the maximum tolerated length of an overlap\\nbetween both segments on the read. If the overlap\\nbetween the two segments on the read is larger than\\nthis value, no deletion is called."
    partition_max_distance: "Maximum distance in bp between SVs in a partition\\n(default: 5000). Before clustering, the SV signatures\\nare divided into coarse partitions. This parameter\\ndetermines the maximum distance between two subsequent\\nsignatures in the same partition. If the distance\\nbetween two subsequent signatures is larger than this\\nparameter, they are distributed into separate\\npartitions."
    distance_normalizer: "Distance normalizer used for span-position distance\\n(default: 900). SVIM clusters the SV signatures using\\nan hierarchical clustering approach and a novel\\ndistance metric called \\\"span-position distance\\\". Span-\\nposition distance is the sum of two components, span\\ndistance and position distance. The span distance is\\nthe difference in lengths between signatures\\nnormalized by the greater length and always lies in\\nthe interval [0,1]. The position distance is the\\ndifference in position between signatures normalized\\nby the distance normalizer (this parameter). For a\\nposition difference of 1.8kb and a distance normalizer\\nof 900, the position distance will be 2. A smaller\\ndistance normalizer leads to a higher position\\ndistance and as a consequence increases the importance\\nof the position distance in the span-position distance\\nrelative to the span distance."
    cluster_max_distance: "Maximum span-position distance between SVs in a\\ncluster (default: 0.3). This is the most important\\nparameter because it determines the strictness of\\nclustering. Choosing a large value leads to fewer but\\nlarger clusters with larger distances between its\\nmembers. Choosing a small value leads to more but\\nsmaller clusters with smaller distances between its\\nmembers. This parameter determines the height of the\\ncut-off in the hierarchical clustering dendrogram."
    del_ins_dup_max_distance: "Maximum span-position distance between the origin of\\nan insertion and a deletion to be flagged as a\\npotential cut&paste insertion (default: 1.0)"
    trans_destination_partition_max_distance: "Maximum distance in bp between translocation\\nbreakpoint destinations in a partition (default: 1000)"
    trans_partition_max_distance: "Maximum distance in bp between translocation\\nbreakpoints in a partition (default: 200)"
    trans_sv_max_distance: "Maximum distance in bp between a translocation\\nbreakpoint and an SV signature to be combined\\n(default: 500)"
    skip_genotyping: "Disable genotyping (default: False)"
    minimum_score: "Minimum score for genotyping (default: 3). Only SV\\ncandidates with a higher or equal score are genotyped.\\nDepending on the score distribution among the SV\\ncandidates, decreasing this value increases the\\nruntime. We recommend to choose a value close to the\\nscore threshold used for filtering the SV candidates."
    homozygous_threshold: "Minimum variant allele frequency to be called as\\nhomozygous (default: 0.8). Allele frequency is\\ncomputed as the fraction of reads supporting the\\nvariant over the total number of reads covering the\\nvariant. Variants with an allele frequence greater\\nthan or equal to this threshold are called as\\nhomozygous alternative."
    heterozygous_threshold: "Minimum variant allele frequency to be called as\\nheterozygous (default: 0.2). Allele frequency is\\ncomputed as the fraction of reads supporting the\\nvariant over the total number of reads covering the\\nvariant. Variants with an allele frequence greater\\nthan or equal to this threshold but lower than the\\nhomozygous threshold are called as heterozygous\\nalternative. Variants with an allele frequence lower\\nthan this threshold are called as homozygous\\nreference."
    minimum_depth: "Minimum total read depth for genotyping (default: 4).\\nVariants covered by a total number of reads lower than\\nthis value are not assigned a genotype (./. in the\\noutput VCF file)."
    sample: "Sample ID to include in output vcf file (default:\\nSample)"
    types: "SV types to include in output VCF (default:\\nDEL,INS,INV,DUP:TANDEM,DUP:INT,BND). Give a comma-\\nseparated list of SV types. The possible SV types are:\\nDEL (deletions), INS (novel insertions), INV\\n(inversions), DUP:TANDEM (tandem duplications),\\nDUP:INT (interspersed duplications), BND (breakends)."
    sequence_alleles: "Use nucleotide sequences for alleles of deletions,\\ninversions and insertions in output VCF (default:\\nFalse). By default, all SVs are represented by\\nsymbolic alleles, such as <DEL>, <INV> or <INS>. If\\nenabled, ALT alleles of insertions are obtained from\\nthe sequence of a random read that supports the\\nvariant."
    insertion_sequences: "Output insertion sequences in INFO tag of VCF\\n(default: False). If enabled, the INFO/SEQS tag\\ncontains a list of insertion sequences from the\\nsupporting reads. However, the insertion sequences are\\nnot combined into a consensus sequence."
    tandem_duplications_as_insertions: "Represent tandem duplications as insertions in output\\nVCF (default: False). By default, tandem duplications\\nare represented by the SVTYPE=DUP:TANDEM and the\\ngenomic source is given by the POS and END tags. When\\nenabling this option, duplications are instead\\nrepresented by the SVTYPE=INS and POS and END both\\ngive the insertion point of the duplication."
    interspersed_duplications_as_insertions: "Represent interspersed duplications as insertions in\\noutput VCF (default: False). By default, interspersed\\nduplications are represented by the SVTYPE=DUP:INT and\\nthe genomic source is given by the POS and END tags.\\nWhen enabling this option, duplications are instead\\nrepresented by the SVTYPE=INS and POS and END both\\ngive the insertion point of the duplication."
    read_names: "Output names of supporting reads in INFO tag of VCF\\n(default: False). If enabled, the INFO/READS tag\\ncontains the list of names of the supporting reads."
    z_mws: "look for information on ZMWs in PacBio read names\\n(default: False). If enabled, the INFO/ZMWS tag\\ncontains the number of ZMWs that produced supporting\\nreads.\\n"
    working_dir: "Working and output directory. Existing files in the\\ndirectory are overwritten. If the directory does not\\nexist, it is created."
    bam_file: "Coordinate-sorted and indexed BAM file with aligned\\nlong reads"
    genome: "Reference genome file that the long reads were aligned\\nto (FASTA)"
  }
  output {
    File out_stdout = stdout()
    File out_sample = "${in_sample}"
  }
}
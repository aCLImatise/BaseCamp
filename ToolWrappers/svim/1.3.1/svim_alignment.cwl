class: CommandLineTool
id: svim_alignment.cwl
inputs:
- id: in_min_mapq
  doc: "Minimum mapping quality of reads to consider (default:\n20). Reads with a\
    \ lower mapping quality are ignored."
  type: long?
  inputBinding:
    prefix: --min_mapq
- id: in_min_sv_size
  doc: "Minimum SV size to detect (default: 40). SVIM can\npotentially detect events\
    \ of any size but is limited\nby the signal-to-noise ratio in the input alignments.\n\
    That means that more accurate reads and alignments\nenable the detection of smaller\
    \ events. For current\nPacBio or Nanopore data, we would recommend a minimum\n\
    size of 40bp or larger."
  type: long?
  inputBinding:
    prefix: --min_sv_size
- id: in_max_sv_size
  doc: "Maximum SV size to detect (default: 100000). This\nparameter is used to distinguish\
    \ long deletions (and\ninversions) from translocations which cannot be\ndistinguished\
    \ from the alignment alone. Split read\nsegments mapping far apart on the reference\
    \ could\neither indicate a very long deletion (inversion) or a\ntranslocation\
    \ breakpoint. SVIM calls a translocation\nbreakpoint if the mapping distance is\
    \ larger than this\nparameter and a deletion (or inversion) if it is\nsmaller\
    \ or equal."
  type: long?
  inputBinding:
    prefix: --max_sv_size
- id: in_segment_gap_tolerance
  doc: "Maximum tolerated gap between adjacent alignment\nsegments (default: 10).\
    \ This parameter applies to gaps\non the reference and the read. Example: Deletions\
    \ are\ndetected from two subsequent segments of a split read\nthat are mapped\
    \ far apart from each other on the\nreference. The segment gap tolerance determines\
    \ the\nmaximum tolerated length of the read gap between both\nsegments. If there\
    \ is an unaligned read segment larger\nthan this value between the two segments,\
    \ no deletion\nis called."
  type: long?
  inputBinding:
    prefix: --segment_gap_tolerance
- id: in_segment_overlap_tolerance
  doc: "Maximum tolerated overlap between adjacent alignment\nsegments (default: 5).\
    \ This parameter applies to\noverlaps on the reference and the read. Example:\n\
    Deletions are detected from two subsequent segments of\na split read that are\
    \ mapped far apart from each other\non the reference. The segment overlap tolerance\n\
    determines the maximum tolerated length of an overlap\nbetween both segments on\
    \ the read. If the overlap\nbetween the two segments on the read is larger than\n\
    this value, no deletion is called."
  type: long?
  inputBinding:
    prefix: --segment_overlap_tolerance
- id: in_partition_max_distance
  doc: "Maximum distance in bp between SVs in a partition\n(default: 5000). Before\
    \ clustering, the SV signatures\nare divided into coarse partitions. This parameter\n\
    determines the maximum distance between two subsequent\nsignatures in the same\
    \ partition. If the distance\nbetween two subsequent signatures is larger than\
    \ this\nparameter, they are distributed into separate\npartitions."
  type: long?
  inputBinding:
    prefix: --partition_max_distance
- id: in_distance_normalizer
  doc: "Distance normalizer used for span-position distance\n(default: 900). SVIM\
    \ clusters the SV signatures using\nan hierarchical clustering approach and a\
    \ novel\ndistance metric called \"span-position distance\". Span-\nposition distance\
    \ is the sum of two components, span\ndistance and position distance. The span\
    \ distance is\nthe difference in lengths between signatures\nnormalized by the\
    \ greater length and always lies in\nthe interval [0,1]. The position distance\
    \ is the\ndifference in position between signatures normalized\nby the distance\
    \ normalizer (this parameter). For a\nposition difference of 1.8kb and a distance\
    \ normalizer\nof 900, the position distance will be 2. A smaller\ndistance normalizer\
    \ leads to a higher position\ndistance and as a consequence increases the importance\n\
    of the position distance in the span-position distance\nrelative to the span distance."
  type: long?
  inputBinding:
    prefix: --distance_normalizer
- id: in_cluster_max_distance
  doc: "Maximum span-position distance between SVs in a\ncluster (default: 0.3). This\
    \ is the most important\nparameter because it determines the strictness of\nclustering.\
    \ Choosing a large value leads to fewer but\nlarger clusters with larger distances\
    \ between its\nmembers. Choosing a small value leads to more but\nsmaller clusters\
    \ with smaller distances between its\nmembers. This parameter determines the height\
    \ of the\ncut-off in the hierarchical clustering dendrogram."
  type: long?
  inputBinding:
    prefix: --cluster_max_distance
- id: in_del_ins_dup_max_distance
  doc: "Maximum span-position distance between the origin of\nan insertion and a deletion\
    \ to be flagged as a\npotential cut&paste insertion (default: 1.0)"
  type: long?
  inputBinding:
    prefix: --del_ins_dup_max_distance
- id: in_trans_destination_partition_max_distance
  doc: "Maximum distance in bp between translocation\nbreakpoint destinations in a\
    \ partition (default: 1000)"
  type: long?
  inputBinding:
    prefix: --trans_destination_partition_max_distance
- id: in_trans_partition_max_distance
  doc: "Maximum distance in bp between translocation\nbreakpoints in a partition (default:\
    \ 200)"
  type: long?
  inputBinding:
    prefix: --trans_partition_max_distance
- id: in_trans_sv_max_distance
  doc: "Maximum distance in bp between a translocation\nbreakpoint and an SV signature\
    \ to be combined\n(default: 500)"
  type: long?
  inputBinding:
    prefix: --trans_sv_max_distance
- id: in_skip_genotyping
  doc: 'Disable genotyping (default: False)'
  type: boolean?
  inputBinding:
    prefix: --skip_genotyping
- id: in_minimum_score
  doc: "Minimum score for genotyping (default: 3). Only SV\ncandidates with a higher\
    \ or equal score are genotyped.\nDepending on the score distribution among the\
    \ SV\ncandidates, decreasing this value increases the\nruntime. We recommend to\
    \ choose a value close to the\nscore threshold used for filtering the SV candidates."
  type: long?
  inputBinding:
    prefix: --minimum_score
- id: in_homozygous_threshold
  doc: "Minimum variant allele frequency to be called as\nhomozygous (default: 0.8).\
    \ Allele frequency is\ncomputed as the fraction of reads supporting the\nvariant\
    \ over the total number of reads covering the\nvariant. Variants with an allele\
    \ frequence greater\nthan or equal to this threshold are called as\nhomozygous\
    \ alternative."
  type: long?
  inputBinding:
    prefix: --homozygous_threshold
- id: in_heterozygous_threshold
  doc: "Minimum variant allele frequency to be called as\nheterozygous (default: 0.2).\
    \ Allele frequency is\ncomputed as the fraction of reads supporting the\nvariant\
    \ over the total number of reads covering the\nvariant. Variants with an allele\
    \ frequence greater\nthan or equal to this threshold but lower than the\nhomozygous\
    \ threshold are called as heterozygous\nalternative. Variants with an allele frequence\
    \ lower\nthan this threshold are called as homozygous\nreference."
  type: long?
  inputBinding:
    prefix: --heterozygous_threshold
- id: in_minimum_depth
  doc: "Minimum total read depth for genotyping (default: 4).\nVariants covered by\
    \ a total number of reads lower than\nthis value are not assigned a genotype (./.\
    \ in the\noutput VCF file)."
  type: long?
  inputBinding:
    prefix: --minimum_depth
- id: in_sample
  doc: "Sample ID to include in output vcf file (default:\nSample)"
  type: File?
  inputBinding:
    prefix: --sample
- id: in_types
  doc: "SV types to include in output VCF (default:\nDEL,INS,INV,DUP:TANDEM,DUP:INT,BND).\
    \ Give a comma-\nseparated list of SV types. The possible SV types are:\nDEL (deletions),\
    \ INS (novel insertions), INV\n(inversions), DUP:TANDEM (tandem duplications),\n\
    DUP:INT (interspersed duplications), BND (breakends)."
  type: long?
  inputBinding:
    prefix: --types
- id: in_sequence_alleles
  doc: "Use nucleotide sequences for alleles of deletions,\ninversions and insertions\
    \ in output VCF (default:\nFalse). By default, all SVs are represented by\nsymbolic\
    \ alleles, such as <DEL>, <INV> or <INS>. If\nenabled, ALT alleles of insertions\
    \ are obtained from\nthe sequence of a random read that supports the\nvariant."
  type: boolean?
  inputBinding:
    prefix: --sequence_alleles
- id: in_insertion_sequences
  doc: "Output insertion sequences in INFO tag of VCF\n(default: False). If enabled,\
    \ the INFO/SEQS tag\ncontains a list of insertion sequences from the\nsupporting\
    \ reads. However, the insertion sequences are\nnot combined into a consensus sequence."
  type: boolean?
  inputBinding:
    prefix: --insertion_sequences
- id: in_tandem_duplications_as_insertions
  doc: "Represent tandem duplications as insertions in output\nVCF (default: False).\
    \ By default, tandem duplications\nare represented by the SVTYPE=DUP:TANDEM and\
    \ the\ngenomic source is given by the POS and END tags. When\nenabling this option,\
    \ duplications are instead\nrepresented by the SVTYPE=INS and POS and END both\n\
    give the insertion point of the duplication."
  type: boolean?
  inputBinding:
    prefix: --tandem_duplications_as_insertions
- id: in_interspersed_duplications_as_insertions
  doc: "Represent interspersed duplications as insertions in\noutput VCF (default:\
    \ False). By default, interspersed\nduplications are represented by the SVTYPE=DUP:INT\
    \ and\nthe genomic source is given by the POS and END tags.\nWhen enabling this\
    \ option, duplications are instead\nrepresented by the SVTYPE=INS and POS and\
    \ END both\ngive the insertion point of the duplication."
  type: boolean?
  inputBinding:
    prefix: --interspersed_duplications_as_insertions
- id: in_read_names
  doc: "Output names of supporting reads in INFO tag of VCF\n(default: False). If\
    \ enabled, the INFO/READS tag\ncontains the list of names of the supporting reads."
  type: boolean?
  inputBinding:
    prefix: --read_names
- id: in_z_mws
  doc: "look for information on ZMWs in PacBio read names\n(default: False). If enabled,\
    \ the INFO/ZMWS tag\ncontains the number of ZMWs that produced supporting\nreads.\n"
  type: boolean?
  inputBinding:
    prefix: --zmws
- id: in_working_dir
  doc: "Working and output directory. Existing files in the\ndirectory are overwritten.\
    \ If the directory does not\nexist, it is created."
  type: string
  inputBinding:
    position: 0
- id: in_bam_file
  doc: "Coordinate-sorted and indexed BAM file with aligned\nlong reads"
  type: string
  inputBinding:
    position: 1
- id: in_genome
  doc: "Reference genome file that the long reads were aligned\nto (FASTA)"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sample
  doc: "Sample ID to include in output vcf file (default:\nSample)"
  type: File?
  outputBinding:
    glob: $(inputs.in_sample)
hints: []
cwlVersion: v1.1
baseCommand:
- svim
- alignment

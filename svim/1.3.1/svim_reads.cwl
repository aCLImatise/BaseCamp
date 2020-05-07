class: CommandLineTool
id: svim_reads.cwl
inputs:
- id: working_dir
  doc: Working and output directory. Existing files in the directory are overwritten.
    If the directory does not exist, it is created.
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: 'Read file (FASTA, FASTQ, gzipped FASTA, gzipped FASTQ or file list). The read
    file has to have one of the following supported file endings: FASTA: .fa, .fasta,
    .FA, .fa.gz, .fa.gzip, .fasta.gz, .fasta.gzip FASTQ: .fq, .fastq, .FQ, .fq.gz,
    .fq.gzip, .fastq.gz, .fastq.gzip FILE LIST: .fa.fn, fq.fn'
  type: string
  inputBinding:
    position: 1
- id: genome
  doc: Reference genome file (FASTA)
  type: string
  inputBinding:
    position: 2
- id: min_mapq
  doc: 'Minimum mapping quality of reads to consider (default: 20). Reads with a lower
    mapping quality are ignored.'
  type: long
  inputBinding:
    prefix: --min_mapq
- id: min_sv_size
  doc: 'Minimum SV size to detect (default: 40). SVIM can potentially detect events
    of any size but is limited by the signal-to-noise ratio in the input alignments.
    That means that more accurate reads and alignments enable the detection of smaller
    events. For current PacBio or Nanopore data, we would recommend a minimum size
    of 40bp or larger.'
  type: long
  inputBinding:
    prefix: --min_sv_size
- id: max_sv_size
  doc: 'Maximum SV size to detect (default: 100000). This parameter is used to distinguish
    long deletions (and inversions) from translocations which cannot be distinguished
    from the alignment alone. Split read segments mapping far apart on the reference
    could either indicate a very long deletion (inversion) or a translocation breakpoint.
    SVIM calls a translocation breakpoint if the mapping distance is larger than this
    parameter and a deletion (or inversion) if it is smaller or equal.'
  type: long
  inputBinding:
    prefix: --max_sv_size
- id: cores
  doc: 'CPU cores to use for the alignment (default: 1)'
  type: string
  inputBinding:
    prefix: --cores
- id: aligner
  doc: 'Tool for read alignment: ngmlr or minimap2 (default: ngmlr)'
  type: string
  inputBinding:
    prefix: --aligner
- id: nano_pore
  doc: 'Use Nanopore settings for read alignment (default: False)'
  type: boolean
  inputBinding:
    prefix: --nanopore
- id: segment_gap_tolerance
  doc: 'Maximum tolerated gap between adjacent alignment segments (default: 10). This
    parameter applies to gaps on the reference and the read. Example: Deletions are
    detected from two subsequent segments of a split read that are mapped far apart
    from each other on the reference. The segment gap tolerance determines the maximum
    tolerated length of the read gap between both segments. If there is an unaligned
    read segment larger than this value between the two segments, no deletion is called.'
  type: string
  inputBinding:
    prefix: --segment_gap_tolerance
- id: segment_overlap_tolerance
  doc: 'Maximum tolerated overlap between adjacent alignment segments (default: 5).
    This parameter applies to overlaps on the reference and the read. Example: Deletions
    are detected from two subsequent segments of a split read that are mapped far
    apart from each other on the reference. The segment overlap tolerance determines
    the maximum tolerated length of an overlap between both segments on the read.
    If the overlap between the two segments on the read is larger than this value,
    no deletion is called.'
  type: string
  inputBinding:
    prefix: --segment_overlap_tolerance
- id: partition_max_distance
  doc: 'Maximum distance in bp between SVs in a partition (default: 5000). Before
    clustering, the SV signatures are divided into coarse partitions. This parameter
    determines the maximum distance between two subsequent signatures in the same
    partition. If the distance between two subsequent signatures is larger than this
    parameter, they are distributed into separate partitions.'
  type: string
  inputBinding:
    prefix: --partition_max_distance
- id: distance_normalizer
  doc: 'Distance normalizer used for span-position distance (default: 900). SVIM clusters
    the SV signatures using an hierarchical clustering approach and a novel distance
    metric called "span-position distance". Span- position distance is the sum of
    two components, span distance and position distance. The span distance is the
    difference in lengths between signatures normalized by the greater length and
    always lies in the interval [0,1]. The position distance is the difference in
    position between signatures normalized by the distance normalizer (this parameter).
    For a position difference of 1.8kb and a distance normalizer of 900, the position
    distance will be 2. A smaller distance normalizer leads to a higher position distance
    and as a consequence increases the importance of the position distance in the
    span-position distance relative to the span distance.'
  type: string
  inputBinding:
    prefix: --distance_normalizer
- id: cluster_max_distance
  doc: 'Maximum span-position distance between SVs in a cluster (default: 0.3). This
    is the most important parameter because it determines the strictness of clustering.
    Choosing a large value leads to fewer but larger clusters with larger distances
    between its members. Choosing a small value leads to more but smaller clusters
    with smaller distances between its members. This parameter determines the height
    of the cut-off in the hierarchical clustering dendrogram.'
  type: string
  inputBinding:
    prefix: --cluster_max_distance
- id: del_ins_dup_max_distance
  doc: 'Maximum span-position distance between the origin of an insertion and a deletion
    to be flagged as a potential cut&paste insertion (default: 1.0)'
  type: string
  inputBinding:
    prefix: --del_ins_dup_max_distance
- id: trans_destination_partition_max_distance
  doc: 'Maximum distance in bp between translocation breakpoint destinations in a
    partition (default: 1000)'
  type: string
  inputBinding:
    prefix: --trans_destination_partition_max_distance
- id: trans_partition_max_distance
  doc: 'Maximum distance in bp between translocation breakpoints in a partition (default:
    200)'
  type: string
  inputBinding:
    prefix: --trans_partition_max_distance
- id: trans_sv_max_distance
  doc: 'Maximum distance in bp between a translocation breakpoint and an SV signature
    to be combined (default: 500)'
  type: string
  inputBinding:
    prefix: --trans_sv_max_distance
- id: skip_genotyping
  doc: 'Disable genotyping (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip_genotyping
- id: minimum_score
  doc: 'Minimum score for genotyping (default: 3). Only SV candidates with a higher
    or equal score are genotyped. Depending on the score distribution among the SV
    candidates, decreasing this value increases the runtime. We recommend to choose
    a value close to the score threshold used for filtering the SV candidates.'
  type: long
  inputBinding:
    prefix: --minimum_score
- id: homozygous_threshold
  doc: 'Minimum variant allele frequency to be called as homozygous (default: 0.8).
    Allele frequency is computed as the fraction of reads supporting the variant over
    the total number of reads covering the variant. Variants with an allele frequence
    greater than or equal to this threshold are called as homozygous alternative.'
  type: string
  inputBinding:
    prefix: --homozygous_threshold
- id: heterozygous_threshold
  doc: 'Minimum variant allele frequency to be called as heterozygous (default: 0.2).
    Allele frequency is computed as the fraction of reads supporting the variant over
    the total number of reads covering the variant. Variants with an allele frequence
    greater than or equal to this threshold but lower than the homozygous threshold
    are called as heterozygous alternative. Variants with an allele frequence lower
    than this threshold are called as homozygous reference.'
  type: string
  inputBinding:
    prefix: --heterozygous_threshold
- id: minimum_depth
  doc: 'Minimum total read depth for genotyping (default: 4). Variants covered by
    a total number of reads lower than this value are not assigned a genotype (./.
    in the output VCF file).'
  type: long
  inputBinding:
    prefix: --minimum_depth
- id: sample
  doc: 'Sample ID to include in output vcf file (default: Sample)'
  type: string
  inputBinding:
    prefix: --sample
- id: types
  doc: 'SV types to include in output VCF (default: DEL,INS,INV,DUP:TANDEM,DUP:INT,BND).
    Give a comma- separated list of SV types. The possible SV types are: DEL (deletions),
    INS (novel insertions), INV (inversions), DUP:TANDEM (tandem duplications), DUP:INT
    (interspersed duplications), BND (breakends).'
  type: string
  inputBinding:
    prefix: --types
- id: sequence_alleles
  doc: 'Use nucleotide sequences for alleles of deletions, inversions and insertions
    in output VCF (default: False). By default, all SVs are represented by symbolic
    alleles, such as <DEL>, <INV> or <INS>. If enabled, ALT alleles of insertions
    are obtained from the sequence of a random read that supports the variant.'
  type: boolean
  inputBinding:
    prefix: --sequence_alleles
- id: insertion_sequences
  doc: 'Output insertion sequences in INFO tag of VCF (default: False). If enabled,
    the INFO/SEQS tag contains a list of insertion sequences from the supporting reads.
    However, the insertion sequences are not combined into a consensus sequence.'
  type: boolean
  inputBinding:
    prefix: --insertion_sequences
- id: tandem_duplications_as_insertions
  doc: 'Represent tandem duplications as insertions in output VCF (default: False).
    By default, tandem duplications are represented by the SVTYPE=DUP:TANDEM and the
    genomic source is given by the POS and END tags. When enabling this option, duplications
    are instead represented by the SVTYPE=INS and POS and END both give the insertion
    point of the duplication.'
  type: boolean
  inputBinding:
    prefix: --tandem_duplications_as_insertions
- id: interspersed_duplications_as_insertions
  doc: 'Represent interspersed duplications as insertions in output VCF (default:
    False). By default, interspersed duplications are represented by the SVTYPE=DUP:INT
    and the genomic source is given by the POS and END tags. When enabling this option,
    duplications are instead represented by the SVTYPE=INS and POS and END both give
    the insertion point of the duplication.'
  type: boolean
  inputBinding:
    prefix: --interspersed_duplications_as_insertions
- id: read_names
  doc: 'Output names of supporting reads in INFO tag of VCF (default: False). If enabled,
    the INFO/READS tag contains the list of names of the supporting reads.'
  type: boolean
  inputBinding:
    prefix: --read_names
- id: z_mws
  doc: 'look for information on ZMWs in PacBio read names (default: False). If enabled,
    the INFO/ZMWS tag contains the number of ZMWs that produced supporting reads.'
  type: boolean
  inputBinding:
    prefix: --zmws
outputs: []
cwlVersion: v1.1
baseCommand:
- svim
- reads

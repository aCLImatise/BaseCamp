version 1.0

task Satrap {
  input {
    Boolean? max_reads
    Boolean? tags
    Boolean? tone
    Boolean? int_it_trims_second_sequenced_end
    Boolean? int_minimum_mean_quality_tolerated
    Boolean? len
    Boolean? mate_pair
    Boolean? velvet_path
    Boolean? oases_path
    Boolean? strand_specific
    Boolean? km_er_set
    Boolean? oases_km_er
    Boolean? int_it_trims_sequences
    Boolean? int_minimum_mean_quality_reads
    Boolean? int_minimum_contig
    Boolean? float_maximum_tolerated
    Boolean? int_minimum_coverage_required
    Boolean? erode
    Boolean? float_zscore_required
    Boolean? erosion
    Boolean? no_clustering
  }
  command <<<
    satrap \
      ~{true="-max_reads" false="" max_reads} \
      ~{true="-tags" false="" tags} \
      ~{true="-t1" false="" tone} \
      ~{true="-t2" false="" int_it_trims_second_sequenced_end} \
      ~{true="-q" false="" int_minimum_mean_quality_tolerated} \
      ~{true="-len" false="" len} \
      ~{true="-mate-pair" false="" mate_pair} \
      ~{true="-velvet_path" false="" velvet_path} \
      ~{true="-oases_path" false="" oases_path} \
      ~{true="-strand_specific" false="" strand_specific} \
      ~{true="-kmer_set" false="" km_er_set} \
      ~{true="-oases_kmer" false="" oases_km_er} \
      ~{true="-T2" false="" int_it_trims_sequences} \
      ~{true="-Q" false="" int_minimum_mean_quality_reads} \
      ~{true="-l" false="" int_minimum_contig} \
      ~{true="-n" false="" float_maximum_tolerated} \
      ~{true="-c" false="" int_minimum_coverage_required} \
      ~{true="-erode" false="" erode} \
      ~{true="-z" false="" float_zscore_required} \
      ~{true="-erosion" false="" erosion} \
      ~{true="-no_clustering" false="" no_clustering}
  >>>
  parameter_meta {
    max_reads: "(float)         Max number of reads per analyzed file or files [10]"
    tags: "(string,string)    pair-end tag names for assembling purpose. It enables paired-end management (-t1) (tag examples: F3, F5-RNA ...)"
    tone: "(int)          it trims the first sequenced end at 3' (if paired-end) [0]"
    int_it_trims_second_sequenced_end: "(int)          it trims the second sequenced end at 3' [0]"
    int_minimum_mean_quality_tolerated: "(int)          minimum mean quality tolerated for paired_end sequences [15]"
    len: "(int)          minimum read size after trimming [30]"
    mate_pair: "The sequences coming from mate pair libraries will be  managed as paired-end (for assembling purpose) [disabled]"
    velvet_path: "(string)       path to velvet binaries - example: path/velvet/ "
    oases_path: "(string)       path to Oases binary - example: path/oases/ "
    strand_specific: "Velvet will be set considering specific strand"
    km_er_set: "(vector<int>)    Set the kmer to be considered. [23 25 27 29 31]"
    oases_km_er: "(int)          Oases kmer parameter [27]"
    int_it_trims_sequences: "(int)          it trims sequences at 3' end [0]"
    int_minimum_mean_quality_reads: "(int)          minimum mean quality for reads [9]"
    int_minimum_contig: "(int)          Minimum contig length [100]"
    float_maximum_tolerated: "(float)         Maximum tolerated fraction of Ns for each translated contig[1]."
    int_minimum_coverage_required: "(int)          Minimum coverage required to operate the assembly correction If this parameter is used -z will be not considered."
    erode: "(int)          Minimum coverage considered to erode contig ends [2]"
    float_zscore_required: "(float)         z-score required to calculate the coverage threshold basing on the statistical analysis of the sequence coverage [3]. Low values are more conservative when the error correction is applied. As consequence of this fact Ns will be introduced around color incoherence not supported by enough sequence coverage."
    erosion: "it doesn't erodes contig ends in any way"
    no_clustering: "For DNA-seq assembly. It doesn't considers the clustering analysis"
  }
}
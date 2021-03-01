version 1.0

task Satrap {
  input {
    Boolean? step
    Boolean? bin
    Boolean? tmp_dir
    Boolean? max_reads
    Boolean? tags
    Boolean? tone
    Boolean? int_it_trims_second_end
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
    Boolean? float_maximum_fraction
    Boolean? int_minimum_coverage_required
    Boolean? erode
    Boolean? float_zscore_required
    Boolean? erosion
    Boolean? no_clustering
  }
  command <<<
    satrap \
      ~{if (step) then "-step" else ""} \
      ~{if (bin) then "-bin" else ""} \
      ~{if (tmp_dir) then "-tmp_dir" else ""} \
      ~{if (max_reads) then "-max_reads" else ""} \
      ~{if (tags) then "-tags" else ""} \
      ~{if (tone) then "-t1" else ""} \
      ~{if (int_it_trims_second_end) then "-t2" else ""} \
      ~{if (int_minimum_mean_quality_tolerated) then "-q" else ""} \
      ~{if (len) then "-len" else ""} \
      ~{if (mate_pair) then "-mate-pair" else ""} \
      ~{if (velvet_path) then "-velvet_path" else ""} \
      ~{if (oases_path) then "-oases_path" else ""} \
      ~{if (strand_specific) then "-strand_specific" else ""} \
      ~{if (km_er_set) then "-kmer_set" else ""} \
      ~{if (oases_km_er) then "-oases_kmer" else ""} \
      ~{if (int_it_trims_sequences) then "-T2" else ""} \
      ~{if (int_minimum_mean_quality_reads) then "-Q" else ""} \
      ~{if (int_minimum_contig) then "-l" else ""} \
      ~{if (float_maximum_fraction) then "-n" else ""} \
      ~{if (int_minimum_coverage_required) then "-c" else ""} \
      ~{if (erode) then "-erode" else ""} \
      ~{if (float_zscore_required) then "-z" else ""} \
      ~{if (erosion) then "-erosion" else ""} \
      ~{if (no_clustering) then "-no_clustering" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    step: "(vector<int>)     PLEASE SELECT THE DESIRED STEP OF THE ANALYSIS USING \\\"-step\\\" parameter:\\n\\\"1\\\" for STEP 1, \\\"2\\\" for STEP 2 etc. For instance the Oases pipeline\\nrequires: \\\"-step 1 2\\\". The steps 3 and 4 are set by default, so the\\nomitting of this parameter will erase the previous results in these steps"
    bin: "(string)        Set the directory path where binaries are located [bin/]"
    tmp_dir: "(string)        Set the temporary directory where results will be saved [tmp/]."
    max_reads: "(float)         Max number of reads per analyzed file or files [10]"
    tags: "(string,string)    pair-end tag names for assembling purpose. It enables paired-end\\nmanagement (-t1) (tag examples: F3, F5-RNA ...)"
    tone: "(int)          it trims the first sequenced end at 3' (if paired-end) [0]"
    int_it_trims_second_end: "(int)          it trims the second sequenced end at 3' [0]"
    int_minimum_mean_quality_tolerated: "(int)          minimum mean quality tolerated for paired_end sequences [15]"
    len: "(int)          minimum read size after trimming [30]"
    mate_pair: "The sequences coming from mate pair libraries will be\\nmanaged as paired-end (for assembling purpose) [disabled]"
    velvet_path: "(string)       path to velvet binaries - example: path/velvet/"
    oases_path: "(string)       path to Oases binary - example: path/oases/"
    strand_specific: "Velvet will be set considering specific strand"
    km_er_set: "(vector<int>)    Set the kmer to be considered. [23 25 27 29 31]"
    oases_km_er: "(int)          Oases kmer parameter [27]"
    int_it_trims_sequences: "(int)          it trims sequences at 3' end [0]"
    int_minimum_mean_quality_reads: "(int)          minimum mean quality for reads [9]"
    int_minimum_contig: "(int)          Minimum contig length [100]"
    float_maximum_fraction: "(float)         Maximum tolerated fraction of Ns for each translated contig[1]."
    int_minimum_coverage_required: "(int)          Minimum coverage required to operate the assembly correction\\nIf this parameter is used -z will be not considered."
    erode: "(int)          Minimum coverage considered to erode contig ends [2]"
    float_zscore_required: "(float)         z-score required to calculate the coverage threshold basing on\\nthe statistical analysis of the sequence coverage [3]. Low values\\nare more conservative when the error correction is applied. As\\nconsequence of this fact Ns will be introduced around color\\nincoherence not supported by enough sequence coverage."
    erosion: "it doesn't erodes contig ends in any way"
    no_clustering: "For DNA-seq assembly. It doesn't considers the clustering analysis"
  }
  output {
    File out_stdout = stdout()
  }
}
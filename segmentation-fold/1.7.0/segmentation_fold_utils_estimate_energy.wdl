version 1.0

task SegmentationFoldUtilsEstimateEnergy {
  input {
    File? temp_dir
    String? segmentation_fold
    File? xml_file
    Int? threads
    Float? precision
    Int? randomize
    File? sequences_from_fast_a_file
    String dbn_output_file
  }
  command <<<
    segmentation-fold-utils estimate-energy \
      ~{dbn_output_file} \
      ~{if defined(temp_dir) then ("--temp-dir " +  '"' + temp_dir + '"') else ""} \
      ~{if defined(segmentation_fold) then ("--segmentation-fold " +  '"' + segmentation_fold + '"') else ""} \
      ~{if defined(xml_file) then ("--xml-file " +  '"' + xml_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(randomize) then ("--randomize " +  '"' + randomize + '"') else ""} \
      ~{if defined(sequences_from_fast_a_file) then ("--sequences-from-fasta-file " +  '"' + sequences_from_fast_a_file + '"') else ""}
  >>>
  parameter_meta {
    temp_dir: "Ppath in which temporary conifig files will be stored (default: /tmp)"
    segmentation_fold: "Location of segmentatio-fold binary (default: segmentation-fold)"
    xml_file: "Location of segments.xml (default: /usr/local/share/segmentation- fold/segments.xml)"
    threads: "Number of threads per spawned instance of segmentation-fold"
    precision: "Minimal difference for binary split - the smaller this value the slower. if this value equals 0, the difference is set to infinity (default: 0.05)"
    randomize: "Shuffle each sequence this many times and predict energy of shuffled sequence(s) (default: 0, 0 means disabled)"
    sequences_from_fast_a_file: "Use sequences from a FASTA file instead of using the XML file that also contains the segments. In XML files you can explicitly link one Segment(Loop) to one particular sequence instead of doing n*n comparisons (default: None)"
    dbn_output_file: ""
  }
}
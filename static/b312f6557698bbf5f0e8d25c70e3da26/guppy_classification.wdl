version 1.0

task GuppyClassification {
  input {
    String fat
    String heat
    String sing
    String tog
    String classification
    String utilities
  }
  command <<<
    guppy classification \
      ~{fat} \
      ~{heat} \
      ~{sing} \
      ~{tog} \
      ~{classification} \
      ~{utilities}
  >>>
  parameter_meta {
    fat: "makes trees with edges fattened in proportion to the number of reads"
    heat: "maps an an arbitrary vector of the correct length to the tree"
    sing: "makes one tree for each query sequence, showing uncertainty"
    tog: "makes a tree with each of the reads represented as a pendant edge"
    classification: "classify                outputs classification information in SQLite format to_rdp                  convert a reference package to a format RDP wants"
    utilities: "adcl                    calculates ADCL for each pquery in a placefile check                   checks placefiles for common problems compress                compresses a placefile's pqueries demulti                 splits apart placements with multiplicity, undoing a round procedure distmat                 prints out a pairwise distance matrix between the edges filter                  filters one or more placefiles by placement name info                    writes the number of leaves of the reference tree and the number of pqueries islands                 finds the mass islands of one or more pqueries merge                   merges placefiles together mft                     Multi-Filter and Transform placefiles ograph                  finds the overlap graph of one or more pqueries placemat                prints out a pairwise distance matrix between placements rarefy                  performs rarefaction on collections of placements redup                   restores duplicates to deduped placefiles round                   clusters the placements by rounding branch lengths to_csv                  turns a placefile into a csv file to_json                 converts old-style .place files to .jplace placement files trim                    trims placefiles down to only containing an informative subset of the mass"
  }
}
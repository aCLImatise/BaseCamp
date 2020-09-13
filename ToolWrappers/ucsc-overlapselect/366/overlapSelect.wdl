version 1.0

task OverlapSelect {
  input {
    File? select_fmt
    String? select_coord_cols
    Boolean? select_cds
    Boolean? select_range
    String? in_fmt
    String? in_coord_cols
    Boolean? in_cds
    Boolean? in_range
    Boolean? nonoverlapping
    Boolean? strand
    Boolean? opposite_strand
    Boolean? exclude_self
    Boolean? id_match
    Boolean? aggregate
    Int? overlap_threshold
    Int? overlap_threshold_ceil
    Int? overlap_similarity
    Int? overlap_similarity_ceil
    Boolean? overlap_bases
    File? stats_output
    Boolean? stats_output_all
    Boolean? stats_output_both
    Boolean? merge_output
    File? id_output
    File? dropped
    Int? verbose
  }
  command <<<
    overlapSelect \
      ~{if defined(select_fmt) then ("-selectFmt " +  '"' + select_fmt + '"') else ""} \
      ~{if defined(select_coord_cols) then ("-selectCoordCols " +  '"' + select_coord_cols + '"') else ""} \
      ~{if (select_cds) then "-selectCds" else ""} \
      ~{if (select_range) then "-selectRange" else ""} \
      ~{if defined(in_fmt) then ("-inFmt " +  '"' + in_fmt + '"') else ""} \
      ~{if defined(in_coord_cols) then ("-inCoordCols " +  '"' + in_coord_cols + '"') else ""} \
      ~{if (in_cds) then "-inCds" else ""} \
      ~{if (in_range) then "-inRange" else ""} \
      ~{if (nonoverlapping) then "-nonOverlapping" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (opposite_strand) then "-oppositeStrand" else ""} \
      ~{if (exclude_self) then "-excludeSelf" else ""} \
      ~{if (id_match) then "-idMatch" else ""} \
      ~{if (aggregate) then "-aggregate" else ""} \
      ~{if defined(overlap_threshold) then ("-overlapThreshold " +  '"' + overlap_threshold + '"') else ""} \
      ~{if defined(overlap_threshold_ceil) then ("-overlapThresholdCeil " +  '"' + overlap_threshold_ceil + '"') else ""} \
      ~{if defined(overlap_similarity) then ("-overlapSimilarity " +  '"' + overlap_similarity + '"') else ""} \
      ~{if defined(overlap_similarity_ceil) then ("-overlapSimilarityCeil " +  '"' + overlap_similarity_ceil + '"') else ""} \
      ~{if (overlap_bases) then "-overlapBases" else ""} \
      ~{if (stats_output) then "-statsOutput" else ""} \
      ~{if (stats_output_all) then "-statsOutputAll" else ""} \
      ~{if (stats_output_both) then "-statsOutputBoth" else ""} \
      ~{if (merge_output) then "-mergeOutput" else ""} \
      ~{if (id_output) then "-idOutput" else ""} \
      ~{if defined(dropped) then ("-dropped " +  '"' + dropped + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    select_fmt: "- specify selectFile format:\\npsl - PSL format (default for *.psl files).\\npslq - PSL format, using query instead of target\\ngenePred - genePred format (default for *.gp or\\n*.genePred files).\\nbed - BED format (default for *.bed files).\\nIf BED doesn't have blocks, the bed range is used.\\nchain - chain file format (default from .chain files)\\nchainq - chain file format, using query instead of target"
    select_coord_cols: "- selectFile is tab-separate with coordinates\\nas described by spec, which is one of:\\no chromCol - chrom in this column followed by start and end.\\no chromCol,startCol,endCol,strandCol,name - chrom, start, end, and\\nstrand in specified columns. Columns can be omitted from the end\\nor left empty to not specify.\\nNOTE: column numbers are zero-based"
    select_cds: "- Use only CDS in the selectFile"
    select_range: "- Use entire range instead of blocks from records in\\nthe selectFile."
    in_fmt: "- specify inFile format, same values as -selectFmt."
    in_coord_cols: "- inFile is tab-separate with coordinates specified by\\nspec, in format described above."
    in_cds: "- Use only CDS in the inFile"
    in_range: "- Use entire range instead of blocks of records in the inFile."
    nonoverlapping: "- select non-overlapping instead of overlapping records"
    strand: "- must be on the same strand to be considered overlapping"
    opposite_strand: "- must be on the opposite strand to be considered overlapping"
    exclude_self: "- don't compare records with the same coordinates and name.\\nWarning: using only one of -inCds or -selectCds will result in different\\ncoordinates for the same record."
    id_match: "- only select overlapping records if they have the same id"
    aggregate: "- instead of computing overlap bases on individual select entries,\\ncompute it based on the total number of inFile bases overlap by selectFile\\nrecords. -overlapSimilarity and -mergeOutput will not work with\\nthis option."
    overlap_threshold: "- minimum fraction of an inFile record that\\nmust be overlapped by a single select record to be considered\\noverlapping.  Note that this is only coverage by a single select\\nrecord, not total coverage."
    overlap_threshold_ceil: "- select only inFile records with less than\\nthis amount of overlap with a single record, provided they are selected\\nby other criteria."
    overlap_similarity: "- minimum fraction bases in inFile and selectFile\\nrecords that overlap the same genomic locations.  This is computed\\nby (2*overlapBase)/(inFileBase+selectFileBases).\\nNote that this is only coverage by a single select record and this\\nis bidirectional inFile and selectFile must overlap by this\\namount.  A value of 1.0 will select identical records (or CDS if\\nboth CDS options are specified.  Not currently supported with\\n-aggregate."
    overlap_similarity_ceil: "- select only inFile records with less than this\\namount of similarity with a single record. provided they are selected by\\nother criteria."
    overlap_bases: "=-1 - minimum number of bases of overlap, < 0 disables."
    stats_output: "- output overlap statistics instead of selected records.\\nIf no overlap criteria is specified, all overlapping entries are\\nreported, Otherwise only the pairs passing the criteria are\\nreported. This results in a tab-separated file with the columns:\\ninId selectId inOverlap selectOverlap overBases\\nWhere inOverlap is the fraction of the inFile record overlapped by\\nthe selectFile record and selectOverlap is the fraction of the\\nselect record overlap by inFile records.  With -aggregate, output\\nis:\\ninId inOverlap inOverBases inBases"
    stats_output_all: "- like -statsOutput, however output all inFile records,\\nincluding those that are not overlapped."
    stats_output_both: "- like -statsOutput, however output all selectFile and\\ninFile records, including those that are not overlapped."
    merge_output: "- output file with be a merge of the input file with the\\nselectFile records that selected it.  The format is\\ninRec<tab>selectRec.\\nif multiple select records hit, inRec is repeated. This will increase\\nthe memory required. Not supported with -nonOverlapping or -aggregate."
    id_output: "- output a tab-separated file of pairs of\\ninId selectId\\nwith -aggregate, only a single column of inId is written"
    dropped: "- output rows that were dropped to this file."
    verbose: "- verbose > 1 prints some details,"
  }
  output {
    File out_stdout = stdout()
    File out_stats_output = "${in_stats_output}"
    File out_id_output = "${in_id_output}"
    File out_dropped = "${in_dropped}"
  }
}
version 1.0

task ComputeMatrixScaleRegions {
  input {
    Array[File] regions_filename
    Array[File] score_filename
    Array[String] samples_label
    Boolean? smart_labels
    Boolean? quiet
    Boolean? verbose
    String? scale
    Int? number_of_processors
    Boolean? meta_gene
    String? transcript_id
    String? exon_id
    String? transcript_id_designator
    String? deep_blue_url
    String? user_key
    String? deep_blue_tempdir
    Boolean? deep_blue_keep_temp
    String an
    String example
    String usage
    String is
  }
  command <<<
    computeMatrix scale-regions \
      ~{an} \
      ~{example} \
      ~{usage} \
      ~{is} \
      ~{if defined(regions_filename) then ("--regionsFileName " +  '"' + regions_filename + '"') else ""} \
      ~{if defined(score_filename) then ("--scoreFileName " +  '"' + score_filename + '"') else ""} \
      ~{if defined(samples_label) then ("--samplesLabel " +  '"' + samples_label + '"') else ""} \
      ~{true="--smartLabels" false="" smart_labels} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""} \
      ~{true="--metagene" false="" meta_gene} \
      ~{if defined(transcript_id) then ("--transcriptID " +  '"' + transcript_id + '"') else ""} \
      ~{if defined(exon_id) then ("--exonID " +  '"' + exon_id + '"') else ""} \
      ~{if defined(transcript_id_designator) then ("--transcript_id_designator " +  '"' + transcript_id_designator + '"') else ""} \
      ~{if defined(deep_blue_url) then ("--deepBlueURL " +  '"' + deep_blue_url + '"') else ""} \
      ~{if defined(user_key) then ("--userKey " +  '"' + user_key + '"') else ""} \
      ~{if defined(deep_blue_tempdir) then ("--deepBlueTempDir " +  '"' + deep_blue_tempdir + '"') else ""} \
      ~{true="--deepBlueKeepTemp" false="" deep_blue_keep_temp}
  >>>
  parameter_meta {
    regions_filename: "File name or names, in BED or GTF format, containing the regions to plot. If multiple bed files are given, each one is considered a group that can be plotted separately. Also, adding a \"#\" symbol in the bed file causes all the regions until the previous \"#\" to be considered one group. (default: None)"
    score_filename: "bigWig file(s) containing the scores to be plotted. Multiple files should be separated by spaced. BigWig files can be obtained by using the bamCoverage or bamCompare tools. More information about the bigWig file format can be found at http://genome.ucsc.edu/goldenPath/help/bigWig.html (default: None)"
    samples_label: "Labels for the samples. This will then be passed to plotHeatmap and plotProfile. The default is to use the file name of the sample. The sample labels should be separated by spaces and quoted if a label itselfcontains a space E.g. --samplesLabel label-1 \"label 2\" (default: None)"
    smart_labels: "Instead of manually specifying labels for the input bigWig and BED/GTF files, this causes deepTools to use the file name after removing the path and extension. (default: False)"
    quiet: "Set to remove any warning or processing messages. (default: False)"
    verbose: "Being VERY verbose in the status messages. --quiet will disable this. (default: False)"
    scale: "If set, all values are multiplied by this number. (Default: 1)"
    number_of_processors: "Number of processors to use. Type \"max/2\" to use half the maximum number of processors or \"max\" to use all available processors. (Default: 1)"
    meta_gene: "When either a BED12 or GTF file are used to provide regions, perform the computation on the merged exons, rather than using the genomic interval defined by the 5-prime and 3-prime most transcript bound (i.e., columns 2 and 3 of a BED file). If a BED3 or BED6 file is used as input, then columns 2 and 3 are used as an exon. (Default: False)"
    transcript_id: "When a GTF file is used to provide regions, only entries with this value as their feature (column 3) will be processed as transcripts. (Default: transcript)"
    exon_id: "When a GTF file is used to provide regions, only entries with this value as their feature (column 3) will be processed as exons. CDS would be another common value for this. (Default: exon)"
    transcript_id_designator: "Each region has an ID (e.g., ACTB) assigned to it, which for BED files is either column 4 (if it exists) or the interval bounds. For GTF files this is instead stored in the last column as a key:value pair (e.g., as 'transcript_id \"ACTB\"', for a key of transcript_id and a value of ACTB). In some cases it can be convenient to use a different identifier. To do so, set this to the desired key. (Default: transcript_id)"
    deep_blue_url: "For remote files bedgraph/wiggle files hosted on deepBlue, this specifies the server URL. The default is \"http://deepblue.mpi-inf.mpg.de/xmlrpc\", which should not be changed without good reason. (default: http://deepblue.mpi-inf.mpg.de/xmlrpc)"
    user_key: "For remote files bedgraph/wiggle files hosted on deepBlue, this specifies the user key to use for access. The default is \"anonymous_key\", which suffices for public datasets. If you need access to a restricted access/private dataset, then request a key from deepBlue and specify it here. (default: anonymous_key)"
    deep_blue_tempdir: "If specified, temporary files from preloading datasets from deepBlue will be written here (note, this directory must exist). If not specified, where ever temporary files would normally be written on your system is used. (default: None)"
    deep_blue_keep_temp: "If specified, temporary bigWig files from preloading deepBlue datasets are not deleted. A message will be printed noting where these files are and what sample they correspond to. These can then be used if you wish to analyse the same sample with the same regions again. (default: False)"
    an: ""
    example: ""
    usage: ""
    is: ""
  }
}
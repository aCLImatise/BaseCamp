version 1.0

task HiddenDomains {
  input {
    Boolean? binwidththe_width_bin
    Boolean? input_files_isare
    Boolean? controlreadsa_bed_bam
    Boolean? controlreadsbinsif_you_already
    Boolean? chrominfotxtif_you_get
    Boolean? generates_four_files
    Boolean? minposteriortoss_parts_domains
    Boolean? minmapqthe_minimum_mapq
    Boolean? treatmentreadsa_bed_bam
    Boolean? more_options
    Boolean? options
  }
  command <<<
    hiddenDomains \
      ~{if (binwidththe_width_bin) then "-b" else ""} \
      ~{if (input_files_isare) then "-B" else ""} \
      ~{if (controlreadsa_bed_bam) then "-c" else ""} \
      ~{if (controlreadsbinsif_you_already) then "-C" else ""} \
      ~{if (chrominfotxtif_you_get) then "-g" else ""} \
      ~{if (generates_four_files) then "-o" else ""} \
      ~{if (minposteriortoss_parts_domains) then "-p" else ""} \
      ~{if (minmapqthe_minimum_mapq) then "-q" else ""} \
      ~{if (treatmentreadsa_bed_bam) then "-t" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    binwidththe_width_bin: "BIN_WIDTH\\nThe width of the bin. Default is 1000bp."
    input_files_isare: "The input file(s) is(are) in BED format (the default is BAM). NOTE: All\\nread files have to have to same format (either BED or BAM). Use\\nbinReads.pl as a stand alone program if you have a more complicated set up."
    controlreadsa_bed_bam: "ControlReads\\nA BED or BAM file that contains aligned read reads. Use the -B option to\\nspeicfy BED format. BAM format is the default."
    controlreadsbinsif_you_already: "ControlReadsBins\\nIf you have already binned your control reads, you can pass them in\\nwith this option and they will be used directly."
    chrominfotxtif_you_get: "ChromInfo.txt\\nIf you get an out of bounds error when uploading a bed file to the UCSC\\ngenome browser, you can use this option to trim the bounds to the size of\\nthe chromosomes.\\nChromInfo.txt should be a tab delimited file with the chromosome names\\nin the first column and their sizes in the second column.  Here is an\\nexample ChromInfo.txt file for a genome with 3 chromosomes:\\nchr1    197195432\\nchr2    181748087\\nchr3    159599783"
    generates_four_files: "OutputPrefix\\nhiddenDomains generates four or five files with names that start with\\nOutputPrefix.\\n1) \\\"_domains.txt\\\": A text file with all of the enriched domains and\\nposterior probabilities.\\n2) \\\"_vis.bed\\\": A BED file for visualization, which contains one line per\\nsignificantly enriched bin - this allows for color coding based on the\\nposterior probability.\\n3) \\\"_analysis.bed\\\": The second BED file is for analysis, and this merges\\nall consecutive bins with posterior probabiliites greater than\\nMIN_POSTERIOR (as specified with the -p option) or the default value,\\n0 - which merges all consecutive significat bins.\\n4) \\\"_treatment_bins.txt\\\": A file with the read counts per bin.\\n5) \\\"_control_bins.txt\\\": A file with the read counts per bin."
    minposteriortoss_parts_domains: "MIN_POSTERIOR\\nToss out parts of domains that have posterior values that are less\\nthan MIN_POSTERIOR. You can set this to any value you want, but for\\nreference, domainsToBed bins according the following scale:\\n>= 0.9\\n0.9 > posterior >= 0.8\\n0.8 > posterior >= 0.7\\n0.7 > posterior >= min posterior for significance\\nThe default value is 0; everything is merged by default."
    minmapqthe_minimum_mapq: "MIN_MAPQ\\nThe minimum MAPQ score. Default is 30."
    treatmentreadsa_bed_bam: "TreatmentReads\\nA BED or BAM file that contains aligned read reads. Use the -B option to\\nspeicfy BED format. BAM format is the default.\\n"
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}
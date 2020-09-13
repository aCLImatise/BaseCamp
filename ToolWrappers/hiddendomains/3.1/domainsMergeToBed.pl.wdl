version 1.0

task DomainsMergeToBedpl {
  input {
    Boolean? binwidththe_width_bin
    Boolean? minposteriortoss_parts_domains
    Boolean? chrominfotxtif_you_get
    Boolean? create_a_trackline
    Boolean? tracknamethe_name_want
    String domain_file_dot_txt
  }
  command <<<
    domainsMergeToBed_pl \
      ~{domain_file_dot_txt} \
      ~{if (binwidththe_width_bin) then "-b" else ""} \
      ~{if (minposteriortoss_parts_domains) then "-p" else ""} \
      ~{if (chrominfotxtif_you_get) then "-g" else ""} \
      ~{if (create_a_trackline) then "-t" else ""} \
      ~{if (tracknamethe_name_want) then "-n" else ""}
  >>>
  parameter_meta {
    binwidththe_width_bin: "BIN_WIDTH\\nThe width of the bin.  Default is 1000bp."
    minposteriortoss_parts_domains: "MIN_POSTERIOR\\nToss out parts of domains that have posterior values that are less\\nthan MIN_POSTERIOR. You can set this to any value you want, but for\\nreference, domainsToBed bins according the following scale:\\n>= 0.9\\n0.9 > posterior >= 0.8\\n0.8 > posterior >= 0.7\\n0.7 > posterior >= min posterior for significance\\nThe default value is 0; everything is merged by default."
    chrominfotxtif_you_get: "ChromInfo.txt\\nIf you get an out of bounds error when uploading a bed file to the UCSC\\ngenome browser, you can use this option to trim the bounds to the size of\\nthe chromosomes.\\nChromInfo.txt should be a tab delimited file with the chromosome names\\nin the first column and their sizes in the second column.  Here is an\\nexample ChromInfo.txt file for a genome with 3 chromosomes:\\nchr1    197195432\\nchr2    181748087\\nchr3    159599783"
    create_a_trackline: "Create a trackline."
    tracknamethe_name_want: "TRACK_NAME\\nThe name you want to give your track. The default is to use the name of\\nthe domainFile (without the .txt suffix)\\n"
    domain_file_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}
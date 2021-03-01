version 1.0

task DomainsToBedpl {
  input {
    Boolean? width_bin_default
    Boolean? chrominfotxtif_you_get
    Boolean? create_a_trackline
    Boolean? tracknamethe_name_you
    String domain_file_dot_txt
  }
  command <<<
    domainsToBed_pl \
      ~{domain_file_dot_txt} \
      ~{if (width_bin_default) then "-b" else ""} \
      ~{if (chrominfotxtif_you_get) then "-g" else ""} \
      ~{if (create_a_trackline) then "-t" else ""} \
      ~{if (tracknamethe_name_you) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    width_bin_default: "BIN_WIDTH\\nThe width of the bin.  Default is 1000bp."
    chrominfotxtif_you_get: "ChromInfo.txt\\nIf you get an out of bounds error when uploading a bed file to the UCSC\\ngenome browser, you can use this option to trim the bounds to the size of\\nthe chromosomes.\\nChromInfo.txt should be a tab delimited file with the chromosome names\\nin the first column and their sizes in the second column.  Here is an\\nexample ChromInfo.txt file for a genome with 3 chromosomes:\\nchr1    197195432\\nchr2    181748087\\nchr3    159599783"
    create_a_trackline: "Create a trackline."
    tracknamethe_name_you: "TRACK_NAME\\nThe name you want to give your track. The default is to use the name of\\nthe domainFile (without the .txt suffix)\\n"
    domain_file_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}
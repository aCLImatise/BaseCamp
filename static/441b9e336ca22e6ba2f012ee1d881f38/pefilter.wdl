version 1.0

task Pefilter {
  input {
    Boolean? arg_input_bam
    Boolean? arg_output_bam
    Boolean? library_preparation_protocol
    Boolean? report_pe_statistics
    Boolean? arg_number_threads
    Boolean? arg_valid_tag
  }
  command <<<
    pefilter \
      ~{true="-i" false="" arg_input_bam} \
      ~{true="-o" false="" arg_output_bam} \
      ~{true="-p" false="" library_preparation_protocol} \
      ~{true="-s" false="" report_pe_statistics} \
      ~{true="-t" false="" arg_number_threads} \
      ~{true="-d" false="" arg_valid_tag}
  >>>
  parameter_meta {
    arg_input_bam: "[ --infile ] arg          Input BAM file. It should be indexed."
    arg_output_bam: "[ --outfile ] arg         Output BAM file. To save the filtered BAM file."
    library_preparation_protocol: "[ --protocol ]            Library preparation protocol. 0: traditional  library protocol by shotgun approach; 1:  traditional library protocol by Nextera  transposase approach; 2: Pico. Default:  traditional protocol by shotgun."
    report_pe_statistics: "[ --statsonly ]           Report PE tag statistics only but not generate  filtered BAM file. The statitics will show in  stdout."
    arg_number_threads: "[ --numthreads ] arg (=1) Number of threads. Ensure enough memory for many threads. One thread may occupy up to 5GB memory  for a 50GB BAM file. Default: 1."
    arg_valid_tag: "[ --validtag ] arg        Valid tag pair in the format as `tag1,tag2` for  two ends. `N` means mapping not found. Multiple  tag pairs can be specified. For example, `-d  ++,+- -d -+,--`"
  }
}
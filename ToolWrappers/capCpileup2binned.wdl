version 1.0

task CapCpileup2binned {
  input {
    Boolean? pileupfile_input_pileup
    File? outfile_file_name
    Boolean? chromsizes_file_name
    Boolean? target_name_target
    Boolean? bin_wind_will
    Boolean? totalreads_pileup_will
  }
  command <<<
    capCpileup2binned \
      ~{if (pileupfile_input_pileup) then "-i" else ""} \
      ~{if (outfile_file_name) then "-o" else ""} \
      ~{if (chromsizes_file_name) then "-c" else ""} \
      ~{if (target_name_target) then "-t" else ""} \
      ~{if (bin_wind_will) then "-b" else ""} \
      ~{if (totalreads_pileup_will) then "-n" else ""}
  >>>
  parameter_meta {
    pileupfile_input_pileup: "pileupfile  is the input pile-up file name"
    outfile_file_name: "outfile     is the file name for the output bedGraph"
    chromsizes_file_name: "chromsizes  is the file name for the list of chromosome sizes"
    target_name_target: "target      is the name of the target"
    bin_wind_will: "bin wind    pile-up will be up into sliding window bins with step\\nsize of 'bin' and window width of 'wind'"
    totalreads_pileup_will: "totalreads  pile-up will be normalized to reads per million\\ngenome wide; requires total number of reads (available\\nfrom capC main process report file; includes both inter\\nand intra chromosomal).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile_file_name = "${in_outfile_file_name}"
  }
}
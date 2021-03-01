version 1.0

task ASCIIGenome {
  input {
    File? batch_file
    Int? region
    File? fast_a
    File? exec
    Boolean? no_format
    Boolean? noninteractive
    File? config
    Boolean? show_mem
    Boolean? showtime
    String? debug
    String input_files_displayed
  }
  command <<<
    ASCIIGenome \
      ~{input_files_displayed} \
      ~{if defined(batch_file) then ("--batchFile " +  '"' + batch_file + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(exec) then ("--exec " +  '"' + exec + '"') else ""} \
      ~{if (no_format) then "--noFormat" else ""} \
      ~{if (noninteractive) then "--nonInteractive" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (show_mem) then "--showMem" else ""} \
      ~{if (showtime) then "--showTime" else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/asciigenome:1.16.0--0"
  }
  parameter_meta {
    batch_file: "Bed or gff file  of  regions  to process in batch.\\nUse - to read from stdin.\\nASCIIGenome will iterate  through  the  regions in\\nthis file"
    region: "Go to region. Format  1-based as 'chrom:start-end'\\nor 'chrom:start' or 'chrom'.\\nE.g. chr1:1-1000"
    fast_a: "Optional reference fasta file.  If  given, must be\\nindexed, e.g. with\\nsamtools faidx ref.fa"
    exec: "Commands to be executed  at  the  prompt. Either a\\nfile with one command per line\\na single string of  commands,  e.g.  'goto chr1 &&\\nnext && seqRegex ACTG'"
    no_format: "Do  not  format  output   with   non  ascii  chars\\n(colour, bold, etc.) (default: false)"
    noninteractive: "Non interactive mode: Exit  after having processed\\ncmd line args (default: false)"
    config: "Source of  configuration  settings.  It  can  be a\\nlocal file or a tag matching a\\nbuilt-in     configuration:      'black_on_white',\\n'white_on_black', 'metal'. If null,\\nfirst try to  read  configuration  from  file '~/.\\nasciigenome_config'. If this\\nfile  is  missing  use  a  built-in  setting.  For\\nexamples of configuration files\\nsee                                https://github.\\ncom/dariober/ASCIIGenome/tree/master/src/main/resources/config\\n(default: null)"
    show_mem: "Show memory usage.  Typically  used  for debugging\\nonly (default: false)"
    showtime: "Show time  elapsed  to  process  tracks. Typically\\nused for debugging only (default: false)"
    debug: "Set debugging mode.  0:  off;  1:  print exception\\nstack traces; 2: print stack traces\\nand exit. (default: 0)"
    input_files_displayed: "Input  files  to  be  displayed:  bam,  bed,  gtf,\\nbigwig, bedgraph, etc"
  }
  output {
    File out_stdout = stdout()
  }
}
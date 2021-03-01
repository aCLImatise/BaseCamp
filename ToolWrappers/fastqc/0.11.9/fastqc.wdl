version 1.0

task Fastqc {
  input {
    File? outdir
    Boolean? casa_va
    File? nano
    Boolean? no_filter
    File? extract
    Boolean? java
    File? no_extract
    Boolean? nogroup
    Boolean? min_length
    Boolean? format
    Boolean? threads
    Boolean? c
    Boolean? contaminants
    Boolean? a
    Boolean? adapters
    Boolean? specifies_file_a
    File? limits
    Boolean? km_ers
    Boolean? quiet
    Boolean? dir
    String data_dot
    String required_dot
    String simultaneously_dot
  }
  command <<<
    fastqc \
      ~{data_dot} \
      ~{required_dot} \
      ~{simultaneously_dot} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (casa_va) then "--casava" else ""} \
      ~{if (nano) then "--nano" else ""} \
      ~{if (no_filter) then "--nofilter" else ""} \
      ~{if (extract) then "--extract" else ""} \
      ~{if (java) then "--java" else ""} \
      ~{if (no_extract) then "--noextract" else ""} \
      ~{if (nogroup) then "--nogroup" else ""} \
      ~{if (min_length) then "--min_length" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (c) then "-c" else ""} \
      ~{if (contaminants) then "--contaminants" else ""} \
      ~{if (a) then "-a" else ""} \
      ~{if (adapters) then "--adapters" else ""} \
      ~{if (specifies_file_a) then "-l" else ""} \
      ~{if (limits) then "--limits" else ""} \
      ~{if (km_ers) then "--kmers" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (dir) then "--dir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Create all output files in the specified output directory.\\nPlease note that this directory must exist as the program\\nwill not create it.  If this option is not set then the\\noutput file for each sequence file is created in the same\\ndirectory as the sequence file which was processed."
    casa_va: "Files come from raw casava output. Files in the same sample\\ngroup (differing only by the group number) will be analysed\\nas a set rather than individually. Sequences with the filter\\nflag set in the header will be excluded from the analysis.\\nFiles must have the same names given to them by casava\\n(including being gzipped and ending with .gz) otherwise they\\nwon't be grouped together correctly."
    nano: "Files come from nanopore sequences and are in fast5 format. In\\nthis mode you can pass in directories to process and the program\\nwill take in all fast5 files within those directories and produce\\na single output file from the sequences found in all files."
    no_filter: "If running with --casava then don't remove read flagged by\\ncasava as poor quality when performing the QC analysis."
    extract: "If set then the zipped output file will be uncompressed in\\nthe same directory after it has been created.  By default\\nthis option will be set if fastqc is run in non-interactive\\nmode."
    java: "Provides the full path to the java binary you want to use to\\nlaunch fastqc. If not supplied then java is assumed to be in\\nyour path."
    no_extract: "Do not uncompress the output file after creating it.  You\\nshould set this option if you do not wish to uncompress\\nthe output when running in non-interactive mode."
    nogroup: "Disable grouping of bases for reads >50bp. All reports will\\nshow data for every base in the read.  WARNING: Using this\\noption will cause fastqc to crash and burn if you use it on\\nreally long reads, and your plots may end up a ridiculous size.\\nYou have been warned!"
    min_length: "Sets an artificial lower limit on the length of the sequence\\nto be shown in the report.  As long as you set this to a value\\ngreater or equal to your longest read length then this will be\\nthe sequence length used to create your read groups.  This can\\nbe useful for making directly comaparable statistics from\\ndatasets with somewhat variable read lengths."
    format: "Bypasses the normal sequence file format detection and\\nforces the program to use the specified format.  Valid\\nformats are bam,sam,bam_mapped,sam_mapped and fastq"
    threads: "Specifies the number of files which can be processed"
    c: "Specifies a non-default file which contains the list of"
    contaminants: "contaminants to screen overrepresented sequences against.\\nThe file must contain sets of named contaminants in the\\nform name[tab]sequence.  Lines prefixed with a hash will\\nbe ignored."
    a: "Specifies a non-default file which contains the list of"
    adapters: "adapter sequences which will be explicity searched against\\nthe library. The file must contain sets of named adapters\\nin the form name[tab]sequence.  Lines prefixed with a hash\\nwill be ignored."
    specifies_file_a: "Specifies a non-default file which contains a set of criteria"
    limits: "which will be used to determine the warn/error limits for the\\nvarious modules.  This file can also be used to selectively\\nremove some modules from the output all together.  The format\\nneeds to mirror the default limits.txt file found in the\\nConfiguration folder."
    km_ers: "Specifies the length of Kmer to look for in the Kmer content\\nmodule. Specified Kmer length must be between 2 and 10. Default\\nlength is 7 if not specified."
    quiet: "Supress all progress messages on stdout and only report errors."
    dir: "Selects a directory to be used for temporary files written when\\ngenerating report images. Defaults to system temp directory if\\nnot specified."
    data_dot: "If no files to process are specified on the command line then the program"
    required_dot: "In this mode it is suitable for inclusion into a standardised"
    simultaneously_dot: "Each thread will be allocated 250MB of"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
    File out_nano = "${in_nano}"
    File out_extract = "${in_extract}"
    File out_no_extract = "${in_no_extract}"
    File out_limits = "${in_limits}"
  }
}
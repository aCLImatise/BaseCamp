version 1.0

task Bismark2bedGraph {
  input {
    File? name_output_mandatory
    Directory? dir
    Boolean? cut_off
    Boolean? remove_spaces
    File? cx_context
    Int? buffer_size
    Boolean? scaffolds
    Boolean? ample_memory
    File? zero_based
    File? ucsc
    String? methylation
    String? extractor
    String? var_input
    String? files
  }
  command <<<
    bismark2bedGraph \
      ~{methylation} \
      ~{extractor} \
      ~{var_input} \
      ~{files} \
      ~{if defined(name_output_mandatory) then ("--output " +  '"' + name_output_mandatory + '"') else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (remove_spaces) then "--remove_spaces" else ""} \
      ~{if (cx_context) then "--CX_context" else ""} \
      ~{if defined(buffer_size) then ("--buffer_size " +  '"' + buffer_size + '"') else ""} \
      ~{if (scaffolds) then "--scaffolds" else ""} \
      ~{if (ample_memory) then "--ample_memory" else ""} \
      ~{if (zero_based) then "--zero_based" else ""} \
      ~{if (ucsc) then "--ucsc" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  parameter_meta {
    name_output_mandatory: "Name of the output file, mandatory."
    dir: "Output directory. Output is written to the current directory if not specified explicitly."
    cut_off: "[threshold]       The minimum number of times a methylation state has to be seen for that nucleotide\\nbefore its methylation percentage is reported. Default: 1."
    remove_spaces: "Replaces whitespaces in the sequence ID field with underscores to allow sorting."
    cx_context: "The sorted bedGraph output file contains information on every single cytosine that was covered\\nin the experiment irrespective of its sequence context. This applies to both forward and\\nreverse strands. Please be aware that this option may generate large temporary and output files\\nand may take a long time to sort (up to many hours). Default: OFF.\\n(i.e. Default = CpG context only)."
    buffer_size: "This allows you to specify the main memory sort buffer when sorting the methylation information.\\nEither specify a percentage of physical memory by appending % (e.g. --buffer_size 50%) or\\na multiple of 1024 bytes, e.g. 'K' multiplies by 1024, 'M' by 1048576 and so on for 'T' etc.\\n(e.g. --buffer_size 20G). For more information on sort type 'info sort' on a command line.\\nDefaults to 2G."
    scaffolds: "Users working with unfinished genomes sporting tens or even hundreds of thousands of\\nscaffolds/contigs/chromosomes frequently encountered errors with pre-sorting reads to\\nindividual chromosome files. These errors were caused by the operating system's limit\\nof the number of filehandle that can be written to at any one time (typically 1024; to\\nfind out this limit on Linux, type: ulimit -a).\\nTo bypass the limitation of open filehandles, the option --scaffolds does not pre-sort\\nmethylation calls into individual chromosome files. Instead, all input files are\\ntemporarily merged into a single file (unless there is only a single file), and this\\nfile will then be sorted by both chromosome AND position using the Unix sort command.\\nPlease be aware that this option might take a looooong time to complete, depending on\\nthe size of the input files, and the memory you allocate to this process (see --buffer_size).\\nNevertheless, it seems to be working."
    ample_memory: "Using this option will not sort chromosomal positions using the UNIX 'sort' command, but will\\ninstead use two arrays to sort methylated and unmethylated calls, respectively. This may result\\nin a faster sorting process for very large files, but this comes at the cost of a larger memory\\nfootprint (as an estimate, two arrays of the length of (the largest) human chromosome 1 (nearly\\n250 million bp) temporarily consume around 16GB of RAM). Note however that due to the overheads\\nof creating and looping through arrays this option might in fact be *slower* for small-ish\\nfiles (up to a few million alignments). Note also that this option is not currently compatible\\nwith options '--scaffolds/--gazillion'."
    zero_based: "Write out an additional coverage file (ending in .zero.cov) that uses 0-based genomic start\\nand 1-based genomic end coordinates (zero-based, half-open), like used in the bedGraph file,\\ninstead of using 1-based coordinates throughout. Default: OFF."
    ucsc: "Writes out an additional bedGraph file (ending in '_UCSC.bedGraph.gz') that is compatible with the\\nUCSC genome browser. If alignments were carried out against an Ensembl version of the genome, this\\nstep will prefix chromosome names with 'chr', and rename the mitochondrial chromosome from 'MT' to\\n'chrM'."
    methylation: ""
    extractor: ""
    var_input: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_mandatory = "${in_name_output_mandatory}"
    Directory out_dir = "${in_dir}"
    File out_cx_context = "${in_cx_context}"
    File out_zero_based = "${in_zero_based}"
    File out_ucsc = "${in_ucsc}"
  }
}
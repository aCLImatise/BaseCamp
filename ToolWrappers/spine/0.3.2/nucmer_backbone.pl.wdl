version 1.0

task NucmerBackbonepl {
  input {
    File? alignment_oordinates_file
    Boolean? number_genomes_be
    Boolean? genome_used_eference
    Boolean? list_enomes_createdseparated
    Boolean? file_listing_ids
    Boolean? aximum_distance_less
    Boolean? minimum_ackbone_size
    Boolean? minimum_sland_size
    Boolean? prefix_output_files
    Boolean? given_output_coordinates
    File? output_file_used
    Boolean? output_pangenome_sequence
    Boolean? number_threads_default
    Boolean? verbose_output
    Boolean? uppercase_version_number
    Boolean? more_options
    Boolean? options
    String genome
    String or
    String i_dote_dot
    String contig
    String rename_headers_so
    String strainacontig
    String optional_
    String etc_dot
    String sequences_dot
  }
  command <<<
    nucmer_backbone_pl \
      ~{genome} \
      ~{or} \
      ~{i_dote_dot} \
      ~{contig} \
      ~{rename_headers_so} \
      ~{strainacontig} \
      ~{optional_} \
      ~{etc_dot} \
      ~{sequences_dot} \
      ~{if (alignment_oordinates_file) then "-c" else ""} \
      ~{if (number_genomes_be) then "-a" else ""} \
      ~{if (genome_used_eference) then "-r" else ""} \
      ~{if (list_enomes_createdseparated) then "-g" else ""} \
      ~{if (file_listing_ids) then "-x" else ""} \
      ~{if (aximum_distance_less) then "-m" else ""} \
      ~{if (minimum_ackbone_size) then "-B" else ""} \
      ~{if (minimum_sland_size) then "-I" else ""} \
      ~{if (prefix_output_files) then "-s" else ""} \
      ~{if (given_output_coordinates) then "-o" else ""} \
      ~{if (output_file_used) then "-e" else ""} \
      ~{if (output_pangenome_sequence) then "-n" else ""} \
      ~{if (number_threads_default) then "-t" else ""} \
      ~{if (verbose_output) then "-v" else ""} \
      ~{if (uppercase_version_number) then "-V" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignment_oordinates_file: "alignment [C]oordinates file. Produced by numcer alignment of\\nall genomes vs. all genomes:\\n$ nucmer -p out --maxmatch genomes.fasta genomes.fasta\\nfollowed by running show-coords and sorting by reference:\\n$ show-coords -rTH out.delta > out.coords.txt"
    number_genomes_be: "number of genomes from which a section can be [A]bsent and still\\nbe included as core genome (default 0)"
    genome_used_eference: "genome used as [R]eference for generating backbone fragment list\\nwith 1 being the first genome entered, 2 being the second, etc.\\n(default is first genome entered, but you may try several\\nruns altering this number as number and length of backbone\\nsegments output may be slightly different)"
    list_enomes_createdseparated: "list of [G]enomes from which backbone should be created,\\nseparated by commas with no spaces between. Order of the list\\nwill determine priority in producing core genome. Genome given\\nby -r will be given first priorty, with all other genomes moving\\ndown one step. Number of genomes entered must be at least (a+1),\\nso if the value given by -a is 2, at least three genomes must be\\nentered.\\nExample: to create a backbone from the first, second, and fourth\\ngenomes given and ignore the third, enter \\\"1,2,4\\\".\\nThe first genome will be given highest priority,\\nsecond given next-highest, fourth given third-highest\\n(default is to use genomes in the order their sequences were\\nprovided)"
    file_listing_ids: "file listing all cds locus ids in the format:\\ngenome order number<tab>locus id<tab>contig_id<tab>start coord<tab>end coord<tab>strand<tab>product (optional)\\n(one entry per line)\\nexample:\\n1       gen1_00001      contig1 456     2176    +   exoU\\n1       gen1_00002      contig2 3187    4599    +   spcU\\n2       gen2_00001      contigA 679     3100    -   hypothetical protein\\netc.\\nIf an input is given for both -x and -l, only -x will be used as\\ninput. If the file given by -x does not exist, it will be\\ncreated using the files from -l to create a locus id file."
    aximum_distance_less: "[M]aximum distance between backbone fragments.\\nDistances less than this parameter between adjacent fragments\\nwill result in combination of fragments with interspersed N's\\n(default 10)"
    minimum_ackbone_size: "minimum [B]ackbone size to be output (default 10)"
    minimum_sland_size: "minimum [I]sland size to be output (default 10)"
    prefix_output_files: "prefix of output files (default \\\"output\\\")"
    given_output_coordinates: "if given, will output coordinates of core and accessory genome\\nsegments for each genome. Takes longer (default: only output\\nbackbone files)"
    output_file_used: "Output file of position values that can be used to calculate\\npangenome and core genome characteristics of the data set\\nusing core_and_pangenome.pl. If selected, will automatically\\ntrigger -o option."
    output_pangenome_sequence: "Output a pangenome sequence from all input genomes. This sequence\\nwill be generated from sequences in the order given or from the\\norder given to -g and -r above."
    number_threads_default: "Number of threads (default 15)"
    verbose_output: "verbose output"
    uppercase_version_number: "(uppercase)    Output version number and quit."
    more_options: ""
    options: ""
    genome: "version = 0.4"
    or: "one multi-fasta file of sequences aligned by nucmer"
    i_dote_dot: "If the genome \\\"strainA\\\"is contained in two contigs:"
    contig: ">contig2"
    rename_headers_so: "Rename the headers like so:"
    strainacontig: ">#strainA#contig2"
    optional_: "Optional:  "
    etc_dot: "if this file is given, a list of locus IDs of genes present in"
    sequences_dot: "*** This option currently only works for non-draft sequences"
  }
  output {
    File out_stdout = stdout()
    File out_alignment_oordinates_file = "${in_alignment_oordinates_file}"
    File out_output_file_used = "${in_output_file_used}"
  }
}
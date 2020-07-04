version 1.0

task NucmerBackbone.pl {
  input {
    Boolean? number_genomes_section
    Boolean? genome_used_eference
    Boolean? list_enomes_created
    Boolean? file_listing_ids
    Boolean? aximum_distance_backbone
    Boolean? minimum_ackbone_size
    Boolean? minimum_sland_size
    Boolean? prefix_output_files
    Boolean? given_will_output
    Boolean? output_file_used
    Boolean? output_pangenome_sequence
    Boolean? number_threads_default
    Boolean? verbose_output
    Boolean? uppercase_output_version
    Boolean? options
    Boolean? more_options
  }
  command <<<
    nucmer_backbone.pl \
      ~{true="-a" false="" number_genomes_section} \
      ~{true="-r" false="" genome_used_eference} \
      ~{true="-g" false="" list_enomes_created} \
      ~{true="-x" false="" file_listing_ids} \
      ~{true="-m" false="" aximum_distance_backbone} \
      ~{true="-B" false="" minimum_ackbone_size} \
      ~{true="-I" false="" minimum_sland_size} \
      ~{true="-s" false="" prefix_output_files} \
      ~{true="-o" false="" given_will_output} \
      ~{true="-e" false="" output_file_used} \
      ~{true="-n" false="" output_pangenome_sequence} \
      ~{true="-t" false="" number_threads_default} \
      ~{true="-v" false="" verbose_output} \
      ~{true="-V" false="" uppercase_output_version} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    number_genomes_section: "number of genomes from which a section can be [A]bsent and still be included as core genome (default 0)"
    genome_used_eference: "genome used as [R]eference for generating backbone fragment list with 1 being the first genome entered, 2 being the second, etc. (default is first genome entered, but you may try several runs altering this number as number and length of backbone segments output may be slightly different)"
    list_enomes_created: "list of [G]enomes from which backbone should be created, separated by commas with no spaces between. Order of the list will determine priority in producing core genome. Genome given by -r will be given first priorty, with all other genomes moving down one step. Number of genomes entered must be at least (a+1), so if the value given by -a is 2, at least three genomes must be entered. Example: to create a backbone from the first, second, and fourth genomes given and ignore the third, enter \"1,2,4\". The first genome will be given highest priority, second given next-highest, fourth given third-highest (default is to use genomes in the order their sequences were provided)"
    file_listing_ids: "file listing all cds locus ids in the format: genome order number<tab>locus id<tab>contig_id<tab>start coord<tab>end coord<tab>strand<tab>product (optional) (one entry per line) example: 1       gen1_00001      contig1 456     2176    +   exoU 1       gen1_00002      contig2 3187    4599    +   spcU 2       gen2_00001      contigA 679     3100    -   hypothetical protein etc. If an input is given for both -x and -l, only -x will be used as input. If the file given by -x does not exist, it will be created using the files from -l to create a locus id file."
    aximum_distance_backbone: "[M]aximum distance between backbone fragments. Distances less than this parameter between adjacent fragments will result in combination of fragments with interspersed N's (default 10)"
    minimum_ackbone_size: "minimum [B]ackbone size to be output (default 10)"
    minimum_sland_size: "minimum [I]sland size to be output (default 10)"
    prefix_output_files: "prefix of output files (default \"output\")"
    given_will_output: "if given, will output coordinates of core and accessory genome segments for each genome. Takes longer (default: only output backbone files)"
    output_file_used: "Output file of position values that can be used to calculate pangenome and core genome characteristics of the data set using core_and_pangenome.pl. If selected, will automatically trigger -o option."
    output_pangenome_sequence: "Output a pangenome sequence from all input genomes. This sequence will be generated from sequences in the order given or from the order given to -g and -r above."
    number_threads_default: "Number of threads (default 15)"
    verbose_output: "verbose output"
    uppercase_output_version: "(uppercase)    Output version number and quit.        "
    options: ""
    more_options: ""
  }
}
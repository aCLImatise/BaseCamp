version 1.0

task SnapAlignerIndex {
  input {
    Boolean? seed_size_default
    Boolean? h_gone_nine
    Boolean? of_actor
    Boolean? tmax_threads
    Boolean? chars_specify_characters
    Boolean? b_space
    Boolean? pp_adding
    Boolean? h_histogram_file
    Boolean? exact
    Boolean? key_size
    Boolean? large
    Boolean? location_size
    Boolean? sm
    String input_dot_fa
    String output_dir
  }
  command <<<
    snap-aligner index \
      ~{input_dot_fa} \
      ~{output_dir} \
      ~{true="-s" false="" seed_size_default} \
      ~{true="-hg19" false="" h_gone_nine} \
      ~{true="-Ofactor" false="" of_actor} \
      ~{true="-tMaxThreads" false="" tmax_threads} \
      ~{true="-B" false="" chars_specify_characters} \
      ~{true="-bSpace" false="" b_space} \
      ~{true="-pPadding" false="" pp_adding} \
      ~{true="-HHistogramFile" false="" h_histogram_file} \
      ~{true="-exact" false="" exact} \
      ~{true="-keysize" false="" key_size} \
      ~{true="-large" false="" large} \
      ~{true="-locationSize" false="" location_size} \
      ~{true="-sm" false="" sm}
  >>>
  parameter_meta {
    seed_size_default: "Seed size (default: 20)"
    h_gone_nine: "Use pre-computed table bias for hg19, which results in better speed, balance, and a smaller index, but only works for the complete human reference."
    of_actor: "This parameter is deprecated and will be ignored."
    tmax_threads: "Specify the maximum number of threads to use. Default is the number of cores."
    chars_specify_characters: "<chars>         Specify characters to use as chromosome name terminators in the FASTA header line; these characters and anything after are not part of the chromosome name.  You must specify all characters on a single -B switch.  So, for example, with -B_|, the FASTA header line '>chr1|Chromosome 1' would generate a chromosome named 'chr1'.  There's a separate flag for indicating that a space is a terminator."
    b_space: "Indicates that the space character is a terminator for chromosome names (see -B above).  This may be used in addition to other terminators specified by -B.  -B and -bSpace are case sensitive."
    pp_adding: "Specify the number of Ns to put as padding between chromosomes.  This must be as large as the largest edit distance you'll ever use, and there's a performance advantage to have it be bigger than any read you'll process.  Default is 500"
    h_histogram_file: "Build a histogram of seed popularity.  This is just for information, it's not used by SNAP."
    exact: "Compute hash table sizes exactly.  This will slow down index build, but usually will result in smaller indices."
    key_size: "The number of bytes to use for the hash table key.  Larger values increase SNAP's memory footprint, but allow larger seeds.  Default: 4"
    large: "Build a larger index that's a little faster, particualrly for runs with quick/inaccurate parameters.  Increases index size by about 30%, depending on the other index parameters and the contents of the reference genome"
    location_size: "The size of the genome locations stored in the index.  This can be from 4 to 8 bytes.  The locations need to be big enough not only to index the genome, but also to allow some space for representing seeds that occur multiple times.  For the human genome, it will fit with four byte locations if the seed size is 19 or larger, but needs 5 (or more) for smaller seeds.  Making the location size bigger than necessary will just waste (lots of) space, so unless you're doing something quite unusual, the right answer is 4 or 5.  Default is 4"
    sm: "Use a temp file to work better in smaller memory.  This only helps a little, but can be the difference if you're close. In particular, this will generally use less memory than the index will use once it's built, so if this doesn't work you won't be able to use the index anyway. However, if you've got sufficient memory to begin with, this option will just slow down the index build by doing extra, useless IO."
    input_dot_fa: ""
    output_dir: ""
  }
}
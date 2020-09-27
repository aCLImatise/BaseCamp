version 1.0

task Spinepl {
  input {
    File? file
    Int? pct_core
    Int? max_dist
    Boolean? _license_print
    Boolean? _nucpath_full
    Int? refs
    Boolean? mini
    Boolean? pan_genome
    String? prefix
    String? pct_id
    Int? min_out
    Int? threads
    Boolean? break_len
    Boolean? min_cluster
    Boolean? diag_diff
    Boolean? diag_factor
    Boolean? min_match
    Boolean? no_simplify
  }
  command <<<
    spine_pl \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(pct_core) then ("--pctcore " +  '"' + pct_core + '"') else ""} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""} \
      ~{if (_license_print) then "-l" else ""} \
      ~{if (_nucpath_full) then "-m" else ""} \
      ~{if defined(refs) then ("--refs " +  '"' + refs + '"') else ""} \
      ~{if (mini) then "--mini" else ""} \
      ~{if (pan_genome) then "--pangenome" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(pct_id) then ("--pctid " +  '"' + pct_id + '"') else ""} \
      ~{if defined(min_out) then ("--minout " +  '"' + min_out + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (break_len) then "--breaklen" else ""} \
      ~{if (min_cluster) then "--mincluster" else ""} \
      ~{if (diag_diff) then "--diagdiff" else ""} \
      ~{if (diag_factor) then "--diagfactor" else ""} \
      ~{if (min_match) then "--minmatch" else ""} \
      ~{if (no_simplify) then "--nosimplify" else ""}
  >>>
  parameter_meta {
    file: "file with list of input sequence files. Accepted file\\nformats include fasta sequence files, genbank sequence +\\nannotation files, or separate fasta sequence files with\\ncorresponding gff3-formatted annotation files.\\nThis file should be formatted like so:\\npath/to/file1<tab>unique_identifier<tab>fasta or gbk or comb\\npath/to/file2<tab>unique_identifier<tab>fasta or gbk or comb\\nExample:\\n/home/seqs/PAO1.fasta   PAO1    fasta\\n/home/seqs/LESB58.gbk   LESB58  gbk\\n/home/seqs/PA14.fasta,/home/seqs/PA14.gff3  PA14    comb\\nThe third column (fasta, gbk, or comb) is optional, but should\\nbe given if your sequence files end with suffixes other\\nthan \\\".fasta\\\" or \\\".gbk\\\" or if you are providing sequences\\nwith gff3 annotation files, i.e. comb(ined).\\nIf you have genomes spread across multiple files (i.e.\\nchromosomes and/or plasmids), these can be combined by\\neither concatenating the files into one:\\ni.e. 'cat chrom_I.gbk chrom_II.gbk > combined.gbk'\\nor by including all the files in this input file,\\nseparated by commmas:\\nExample:\\n/seqs/chrom_I.fasta,/seqs/chrom_II.fasta    mygenome    fasta\\nchrom_A.gbk,chrom_B.gbk,plasmid_X.gbk   myothergenome   gbk\\nseqA.fasta,seqB.fasta,seqA.gff3,seqB.gff3   genomeAB    comb\\nIMPORTANT: When including multiple files for a strain or\\njoining multiple files within a strain, please ensure that\\nall chromosome/plasmid/contig IDs are unique across files\\nwithin a single genome. If sequence IDs are duplicated, the\\nresults are likely to be wrong."
    pct_core: "percentage of input genomes in which a region must be\\nfound in order to be considered core\\n(default: 100)"
    max_dist: "maximum distance between core genome segments. Distances\\nless than this between adjacent segments will result in\\ncombination of fragments with N's rather than separating\\ninto two or more fragments.\\n(default: 10)"
    _license_print: "or --license  print license information and quit"
    _nucpath_full: "or --nucpath  full path to folder containing MUMmer scripts and\\nexecutables, i.e. /home/applications/MUMmer/bin\\n(default: tries to find MUMmer in your PATH)"
    refs: "reference genome sequence(s) to use as primary output\\nsource(s). This should be one or more integers corresponding\\nto the order of the genomes given in the file above, i.e.\\n\\\"1\\\" would use the first-listed sequence, \\\"3\\\" would use\\nthe third-listed, etc. To prioritize multiple genome\\nsequences, separate the integers with commas, i.e. \\\"1,3\\\"\\nfor giving sequence 1 the highest priority and sequence 3\\nthe next-highest priority.\\nReference sequences will serve as the source of backbone\\nsequences to be output, as well as the source of backbone\\nlocus IDs, if applicable.\\nThe number of reference genomes used will depend on the\\ndefinition of core genome given by option -a. For instance,\\nif core is determined from 10 input genomes and -a is given\\nas 100, then core sequence will only be taken from one\\nreference genome. If, for example, -a is given as 90 from\\n10 input genomes, then potentially two reference sequences\\nwill be needed: The first for sequences present in all 10\\ngenomes and for sequences present in 9 out of 10 genomes\\nincluding the first genome. The second reference sequence\\nwould then be used as the source of all sequences present\\nin 9 out of 10 genomes, but not present in the first\\nreference genome.\\n(default: reference priority will be the same as the order\\nof genomes entered, with the first genome having the highest\\npriority and the last genome having the lowest priority)"
    mini: "produce only limited output, i.e. just the backbone sequence\\nderived from the reference genome(s). This saves time on\\nlarge data sets, especially if you only need the backbone\\nsequence to get accessory sequences from AGEnt.\\n(default: core and accessory sequence sets will be output\\nfor all included genomes)"
    pan_genome: "produce a pangenome sequence and characteristics from\\nsequences in the order given. This option will be ignored\\nif '--mini' option is given.\\n(default: no pangenome information will be output)"
    prefix: "Output prefix\\n(default: \\\"output\\\")"
    pct_id: "minimum percent identity for regions to be considered"
    min_out: "minimum size of sequences to be output, in bases\\n(default: 10)"
    threads: "Number of parallel processes to run. Careful: This script\\ndoes not perform any verification of the number of\\nprocessers available. If you set this number higher than\\nthe number of processors you have, performance is likely to\\nbe significantly degraded.\\n(default: 4)"
    break_len: "Integer (default: 200)"
    min_cluster: "Integer (default: 65)"
    diag_diff: "Integer (default: 5)"
    diag_factor: "Float (default: 0.12)"
    min_match: "Integer (default: 20)"
    no_simplify: "(default: simplify)"
  }
  output {
    File out_stdout = stdout()
  }
}
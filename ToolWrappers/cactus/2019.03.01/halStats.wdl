version 1.0

task HalStats {
  input {
    Boolean? all_coverage
    Int? base_comp
    String? bed_sequences
    String? bottom_segments
    Int? branch_length
    Boolean? branches
    Int? cache_bytes
    Int? cache_mdc
    Int? cacher_dc
    Int? cache_w_zero
    String? children
    Int? chrom_sizes
    String? coverage
    String? genome_metadata
    Boolean? genomes
    Boolean? in_memory
    String? num_segments
    String? parent
    String? percentid
    Boolean? root
    String? sequence_stats
    String? sequences
    File? span
    File? span_root
    String? top_segments
    Boolean? tree
    String hal_file
  }
  command <<<
    halStats \
      ~{hal_file} \
      ~{if (all_coverage) then "--allCoverage" else ""} \
      ~{if defined(base_comp) then ("--baseComp " +  '"' + base_comp + '"') else ""} \
      ~{if defined(bed_sequences) then ("--bedSequences " +  '"' + bed_sequences + '"') else ""} \
      ~{if defined(bottom_segments) then ("--bottomSegments " +  '"' + bottom_segments + '"') else ""} \
      ~{if defined(branch_length) then ("--branchLength " +  '"' + branch_length + '"') else ""} \
      ~{if (branches) then "--branches" else ""} \
      ~{if defined(cache_bytes) then ("--cacheBytes " +  '"' + cache_bytes + '"') else ""} \
      ~{if defined(cache_mdc) then ("--cacheMDC " +  '"' + cache_mdc + '"') else ""} \
      ~{if defined(cacher_dc) then ("--cacheRDC " +  '"' + cacher_dc + '"') else ""} \
      ~{if defined(cache_w_zero) then ("--cacheW0 " +  '"' + cache_w_zero + '"') else ""} \
      ~{if defined(children) then ("--children " +  '"' + children + '"') else ""} \
      ~{if defined(chrom_sizes) then ("--chromSizes " +  '"' + chrom_sizes + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(genome_metadata) then ("--genomeMetaData " +  '"' + genome_metadata + '"') else ""} \
      ~{if (genomes) then "--genomes" else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(num_segments) then ("--numSegments " +  '"' + num_segments + '"') else ""} \
      ~{if defined(parent) then ("--parent " +  '"' + parent + '"') else ""} \
      ~{if defined(percentid) then ("--percentID " +  '"' + percentid + '"') else ""} \
      ~{if (root) then "--root" else ""} \
      ~{if defined(sequence_stats) then ("--sequenceStats " +  '"' + sequence_stats + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if defined(span_root) then ("--spanRoot " +  '"' + span_root + '"') else ""} \
      ~{if defined(top_segments) then ("--topSegments " +  '"' + top_segments + '"') else ""} \
      ~{if (tree) then "--tree" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all_coverage: ":              print histogram of coverage from all genomes to all\\ngenomes [default = 0]"
    base_comp: ":         print base composition for given genome by sampling every\\nstep bases. Parameter value is of the form genome,step.\\nEx: --baseComp human,1000.  The ouptut is of the form"
    bed_sequences: ":     print sequences of given genome in bed format [default =\\n\\\"\\\"]"
    bottom_segments: ":   print coordinates of all bottom segments of given genome\\nin BED format. [default = \\\"\\\"]"
    branch_length: ":     print branch length between given genome and its parent\\nin the tree [default = \\\"\\\"]"
    branches: ":                 print list of branches. Each branch is specified by the\\nchild genome [default = 0]"
    cache_bytes: ":       maximum size in bytes of regular hdf5 cache [default =\\n15728640]"
    cache_mdc: ":         number of metadata slots in hdf5 cache [default = 113]"
    cacher_dc: ":         number of regular slots in hdf5 cache.  should be a prime\\nnumber ~= 10 * DefaultCacheRDCBytes / chunk [default ="
    cache_w_zero: ":          w0 parameter fro hdf5 cache [default = 0.75]"
    children: ":         print names of children of given genome [default = \\\"\\\"]"
    chrom_sizes: ":       print the name and length of each sequence in a given\\ngenome.  This is a subset of the information returned by\\n--sequenceStats but is useful because it is in the format\\nused by wigToBigWig [default = \\\"\\\"]"
    coverage: ":         print histogram of coverage of a genome with all genomes\\n[default = \\\"\\\"]"
    genome_metadata: ":   print metadata for given genome, one entry per line,\\ntab-seperated. [default = \\\"\\\"]"
    genomes: ":                  print only a list of genomes in alignment [default = 0]"
    in_memory: ":                 load all data in memory (and disable hdf5 cache) [default\\n= 0]"
    num_segments: ":      print numTopSegments numBottomSegments for given genome.\\n[default = \\\"\\\"]"
    parent: ":           print name of parent of given genome [default = \\\"\\\"]"
    percentid: ":        print % ID of a genome with all other genomes.Only\\nnon-duplicated and unambiguous sites areconsidered\\n[default = \\\"\\\"]"
    root: ":                     print root genome name [default = 0]"
    sequence_stats: ":    print stats for each sequence in given genome [default =\\n\\\"\\\"]"
    sequences: ":        print list of sequences in given genome [default = \\\"\\\"]"
    span: ":             print branches on path (or spanning tree) between comma\\nseparated list of genomes [default = \\\"\\\"]"
    span_root: ":         print genomes on path(or spanning tree) between comma\\nseparated list of genomes.  Different from --spanonly in\\nthat the spanning tree root is also given [default = \\\"\\\"]"
    top_segments: ":      print coordinates of all top segments of given genome in\\nBED format. [default = \\\"\\\"]"
    tree: ":                     print only the NEWICK tree [default = 0]"
    hal_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task Anvicomputegenomesimilarity {
  input {
    File? internal_genomes
    File? external_genomes
    File? fast_a_text_file
    File? output_dir
    String? pan_db
    String? program
    Int? fast_ani_km_er_size
    Int? fragment_length
    Int? min_num_fragments
    String? method
    Int? min_alignment_fraction
    Int? significant_alignment_length
    Int? min_full_percent_identity
    Int? km_er_size
    Int? scale
    String? distance
    String? linkage
    Int? num_threads
    Boolean? just_do_it
    String it_dot
  }
  command <<<
    anvi_compute_genome_similarity \
      ~{it_dot} \
      ~{if defined(internal_genomes) then ("--internal-genomes " +  '"' + internal_genomes + '"') else ""} \
      ~{if defined(external_genomes) then ("--external-genomes " +  '"' + external_genomes + '"') else ""} \
      ~{if defined(fast_a_text_file) then ("--fasta-text-file " +  '"' + fast_a_text_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(program) then ("--program " +  '"' + program + '"') else ""} \
      ~{if defined(fast_ani_km_er_size) then ("--fastani-kmer-size " +  '"' + fast_ani_km_er_size + '"') else ""} \
      ~{if defined(fragment_length) then ("--fragment-length " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(min_num_fragments) then ("--min-num-fragments " +  '"' + min_num_fragments + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(min_alignment_fraction) then ("--min-alignment-fraction " +  '"' + min_alignment_fraction + '"') else ""} \
      ~{if defined(significant_alignment_length) then ("--significant-alignment-length " +  '"' + significant_alignment_length + '"') else ""} \
      ~{if defined(min_full_percent_identity) then ("--min-full-percent-identity " +  '"' + min_full_percent_identity + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(linkage) then ("--linkage " +  '"' + linkage + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    internal_genomes: "A five-column TAB-delimited flat text file. The header\\nline must contain these columns: 'name', 'bin_id',\\n'collection_id', 'profile_db_path', 'contigs_db_path'.\\nEach line should list a single entry, where 'name' can\\nbe any name to describe the anvi'o bin identified as\\n'bin_id' that is stored in a collection."
    external_genomes: "A two-column TAB-delimited flat text file that lists\\nanvi'o contigs databases. The first item in the header\\nline should read 'name', and the second should read\\n'contigs_db_path'. Each line in the file should\\ndescribe a single entry, where the first column is the\\nname of the genome (or MAG), and the second column is\\nthe anvi'o contigs database generated for this genome."
    fast_a_text_file: "A two-column TAB-delimited file that lists multiple\\nFASTA files to import for analysis. If using for\\n`anvi-dereplicate-genomes` or `anvi-compute-distance`,\\neach FASTA is assumed to be a genome. The first item\\nin the header line should read 'name', and the second\\nitem should read 'path'. Each line in the field should\\ndescribe a single entry, where the first column is the\\nname of the FASTA file or corresponding sequence, and\\nthe second column is the path to the FASTA file\\nitself."
    output_dir: "Directory path for output files"
    pan_db: "This is totally optional, but very useful when\\napplicable. If you are running this for genomes for\\nwhich you already have an anvi'o pangeome, then you\\ncan show where the pan database is and anvi'o would\\nautomatically add the results into the misc data\\ntables of your pangenome. Those data can then be shown\\nas heatmaps on the pan interactive interface through\\nthe 'layers' tab."
    program: "Tell anvi'o which program to run to process genome\\nsimilarity. For ANI, you should either use pyANI or\\nfastANI. If accuracy is paramount (for example,\\ndistinguishing things less than 1 percent different),\\nor for dealing with genomes < 80 percent similar,\\npyANI is what we recommend. However, fastANI is much\\nfaster. If you for some reason want to use mash\\nsimilarity, you can use sourmash, but its really not\\nintended for genome comparisons. If you don't choose\\nanything here, anvi'o will reluctantly set the program\\nto pyANI, but you really should be the one who is on\\ntop of these things."
    fast_ani_km_er_size: "Choose a kmer. The default is 16."
    fragment_length: "Choose a fragment length. The default is 3000."
    min_num_fragments: "Choose the minimum number of fragment lengths to that\\ncan can be trusted. The default is 50."
    method: "Method for pyANI. The default is ANIb. You must have\\nthe necessary binary in path for whichever method you\\nchoose. According to the pyANI help for v0.2.7 at\\nhttps://github.com/widdowquinn/pyani, the method\\n'ANIm' uses MUMmer (NUCmer) to align the input\\nsequences. 'ANIb' uses BLASTN+ to align 1020nt\\nfragments of the input sequences. 'ANIblastall': uses\\nthe legacy BLASTN to align 1020nt fragments Finally,\\n'TETRA': calculates tetranucleotide frequencies of\\neach input sequence"
    min_alignment_fraction: "In some cases you may get high raw ANI estimates\\n(percent identity scores) between two genomes that\\nhave little to do with each other simply because only\\na small fraction of their content may be aligned. This\\nfilter will set all ANI scores between two genomes to\\n0 if the alignment fraction is less than you deem\\ntrustable. When you set a value, anvi'o will go\\nthrough the ANI results, and set percent identity\\nscores between two genomes to 0 if the alignment\\nfraction *between either of them* is less than the\\nparameter described here. The default is 0."
    significant_alignment_length: "So --min-alignment-fraction discards any hit that is\\ncoming from alignments that represent shorter\\nfractions of genomes, but what if you still don't want\\nto miss an alignment that is longer than an X number\\nof nucleotides regardless of what fraction of the\\ngenome it represents? Well, this parameter is to\\nrecover things that may be lost due to --min-\\nalignment-fraction parameter. Let's say, if you set\\n--min-alignment-fraction to '0.05', and this parameter\\nto '5000', anvi'o will keep hits from alignments that\\nare longer than 5000 nts, EVEN IF THEY REPRESENT less\\nthan 5 percent of a given genome pair. Basically if\\n--min-alignment-fraction is your shield to protect\\nyourself from incoming garbage, --significant-\\nalignment-length is your chopstick to pick out those\\nthat may be interesting, and you are a true warrior\\nhere."
    min_full_percent_identity: "In some cases you may get high raw ANI estimates\\n(percent identity scores) between two genomes that\\nhave little to do with each other simply because only\\na small fraction of their content may be aligned. This\\ncan be partly alleviated by considering the *full*\\npercent identity, which includes in its calculation\\nregions that did not align. For example, if the\\nalignment is a whopping 97 percent identity but only 8\\npercent of the genome aligned, the *full* percent\\nidentity is 0.970 * 0.080 = 0.078 OR 7.8 percent.\\n*full* percent identity is always included in the\\nreport, but you can also use it as a filter for other\\nmetrics, such as percent identity. This filter will\\nset all ANI measures between two genomes to 0 if the\\n*full* percent identity is less than you deem\\ntrustable. When you set a value, anvi'o will go\\nthrough the ANI results, and set all ANI measures\\nbetween two genomes to 0 if the *full* percent\\nidentity *between either of them* is less than the\\nparameter described here. The default is 0."
    km_er_size: "Set the k-mer size for mash similarity checks. We\\nfound 13 in almost all cases correlates best with\\nalignment-based ANI."
    scale: "Set the compression ratio for fasta signature file\\ncomputations. The default is 1000. Smaller ratios\\ndecrease sensitivity, while larger ratios will lead to\\nlarge fasta signatures."
    distance: "The distance metric for the hierarchical clustering.\\nThe default is \\\"euclidean\\\"."
    linkage: "The linkage method for the hierarchical clustering.\\nThe default is \\\"ward\\\"."
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast."
    just_do_it: "Don't bother me with questions or warnings, just do"
    it_dot: "--log-file FILE_PATH  File path to store debug/output messages."
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}
version 1.0

task AnviComputeGenomeSimilarity {
  input {
    File? internal_genomes
    File? external_genomes
    String? fast_a_text_file
    String? output_dir
    String? pan_db
    String? program
    String? fast_ani_km_er_size
    String? fragment_length
    Int? min_num_fragments
    String? method
    String? min_alignment_fraction
    Int? significant_alignment_length
    String? min_full_percent_identity
    Int? km_er_size
    Int? scale
    String? distance
    String? linkage
    String? num_threads
    Boolean? just_do_it
    File? log_file
  }
  command <<<
    anvi-compute-genome-similarity \
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
      ~{true="--just-do-it" false="" just_do_it} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    internal_genomes: "A five-column TAB-delimited flat text file. The header line must contain these columns: 'name', 'bin_id', 'collection_id', 'profile_db_path', 'contigs_db_path'. Each line should list a single entry, where 'name' can be any name to describe the anvi'o bin identified as 'bin_id' that is stored in a collection."
    external_genomes: "A two-column TAB-delimited flat text file that lists anvi'o contigs databases. The first item in the header line should read 'name', and the second should read 'contigs_db_path'. Each line in the file should describe a single entry, where the first column is the name of the genome (or MAG), and the second column is the anvi'o contigs database generated for this genome."
    fast_a_text_file: "A two-column TAB-delimited file that lists multiple FASTA files to import for analysis. If using for `anvi-dereplicate-genomes` or `anvi-compute-distance`, each FASTA is assumed to be a genome. The first item in the header line should read 'name', and the second item should read 'path'. Each line in the field should describe a single entry, where the first column is the name of the FASTA file or corresponding sequence, and the second column is the path to the FASTA file itself."
    output_dir: "Directory path for output files"
    pan_db: "This is totally optional, but very useful when applicable. If you are running this for genomes for which you already have an anvi'o pangeome, then you can show where the pan database is and anvi'o would automatically add the results into the misc data tables of your pangenome. Those data can then be shown as heatmaps on the pan interactive interface through the 'layers' tab."
    program: "Tell anvi'o which program to run to process genome similarity. For ANI, you should either use pyANI or fastANI. If accuracy is paramount (for example, distinguishing things less than 1 percent different), or for dealing with genomes < 80 percent similar, pyANI is what we recommend. However, fastANI is much faster. If you for some reason want to use mash similarity, you can use sourmash, but its really not intended for genome comparisons. If you don't choose anything here, anvi'o will reluctantly set the program to pyANI, but you really should be the one who is on top of these things."
    fast_ani_km_er_size: "Choose a kmer. The default is 16."
    fragment_length: "Choose a fragment length. The default is 3000."
    min_num_fragments: "Choose the minimum number of fragment lengths to that can can be trusted. The default is 50."
    method: "Method for pyANI. The default is ANIb. You must have the necessary binary in path for whichever method you choose. According to the pyANI help for v0.2.7 at https://github.com/widdowquinn/pyani, the method 'ANIm' uses MUMmer (NUCmer) to align the input sequences. 'ANIb' uses BLASTN+ to align 1020nt fragments of the input sequences. 'ANIblastall': uses the legacy BLASTN to align 1020nt fragments Finally, 'TETRA': calculates tetranucleotide frequencies of each input sequence"
    min_alignment_fraction: "In some cases you may get high raw ANI estimates (percent identity scores) between two genomes that have little to do with each other simply because only a small fraction of their content may be aligned. This filter will set all ANI scores between two genomes to 0 if the alignment fraction is less than you deem trustable. When you set a value, anvi'o will go through the ANI results, and set percent identity scores between two genomes to 0 if the alignment fraction *between either of them* is less than the parameter described here. The default is 0."
    significant_alignment_length: "So --min-alignment-fraction discards any hit that is coming from alignments that represent shorter fractions of genomes, but what if you still don't want to miss an alignment that is longer than an X number of nucleotides regardless of what fraction of the genome it represents? Well, this parameter is to recover things that may be lost due to --min- alignment-fraction parameter. Let's say, if you set --min-alignment-fraction to '0.05', and this parameter to '5000', anvi'o will keep hits from alignments that are longer than 5000 nts, EVEN IF THEY REPRESENT less than 5 percent of a given genome pair. Basically if --min-alignment-fraction is your shield to protect yourself from incoming garbage, --significant- alignment-length is your chopstick to pick out those that may be interesting, and you are a true warrior here."
    min_full_percent_identity: "In some cases you may get high raw ANI estimates (percent identity scores) between two genomes that have little to do with each other simply because only a small fraction of their content may be aligned. This can be partly alleviated by considering the *full* percent identity, which includes in its calculation regions that did not align. For example, if the alignment is a whopping 97 percent identity but only 8 percent of the genome aligned, the *full* percent identity is 0.970 * 0.080 = 0.078 OR 7.8 percent. *full* percent identity is always included in the report, but you can also use it as a filter for other metrics, such as percent identity. This filter will set all ANI measures between two genomes to 0 if the *full* percent identity is less than you deem trustable. When you set a value, anvi'o will go through the ANI results, and set all ANI measures between two genomes to 0 if the *full* percent identity *between either of them* is less than the parameter described here. The default is 0."
    km_er_size: "Set the k-mer size for mash similarity checks. We found 13 in almost all cases correlates best with alignment-based ANI."
    scale: "Set the compression ratio for fasta signature file computations. The default is 1000. Smaller ratios decrease sensitivity, while larger ratios will lead to large fasta signatures."
    distance: "The distance metric for the hierarchical clustering. The default is \"euclidean\"."
    linkage: "The linkage method for the hierarchical clustering. The default is \"ward\"."
    num_threads: "Maximum number of threads to use for multithreading whenever possible. Very conservatively, the default is 1. It is a good idea to not exceed the number of CPUs / cores on your system. Plus, please be careful with this option if you are running your commands on a SGE --if you are clusterizing your runs, and asking for multiple threads to use, you may deplete your resources very fast."
    just_do_it: "Don't bother me with questions or warnings, just do it."
    log_file: "File path to store debug/output messages."
  }
}
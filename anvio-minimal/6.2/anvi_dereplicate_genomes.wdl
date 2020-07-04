version 1.0

task AnviDereplicateGenomes {
  input {
    File? internal_genomes
    File? external_genomes
    String? fast_a_text_file
    File? ani_dir
    File? mash_dir
    String? output_dir
    Boolean? skip_fast_a_report
    Boolean? report_all
    String? program
    String? fast_ani_km_er_size
    String? fragment_length
    Int? min_fraction
    String? method
    String? min_alignment_fraction
    Int? significant_alignment_length
    Boolean? use_full_percent_identity
    String? min_full_percent_identity
    Int? km_er_size
    Int? scale
    String? similarity_threshold
    String? cluster_method
    String? representative_method
    String? num_threads
    Boolean? just_do_it
    File? log_file
  }
  command <<<
    anvi-dereplicate-genomes \
      ~{if defined(internal_genomes) then ("--internal-genomes " +  '"' + internal_genomes + '"') else ""} \
      ~{if defined(external_genomes) then ("--external-genomes " +  '"' + external_genomes + '"') else ""} \
      ~{if defined(fast_a_text_file) then ("--fasta-text-file " +  '"' + fast_a_text_file + '"') else ""} \
      ~{if defined(ani_dir) then ("--ani-dir " +  '"' + ani_dir + '"') else ""} \
      ~{if defined(mash_dir) then ("--mash-dir " +  '"' + mash_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--skip-fasta-report" false="" skip_fast_a_report} \
      ~{true="--report-all" false="" report_all} \
      ~{if defined(program) then ("--program " +  '"' + program + '"') else ""} \
      ~{if defined(fast_ani_km_er_size) then ("--fastani-kmer-size " +  '"' + fast_ani_km_er_size + '"') else ""} \
      ~{if defined(fragment_length) then ("--fragment-length " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(min_fraction) then ("--min-fraction " +  '"' + min_fraction + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(min_alignment_fraction) then ("--min-alignment-fraction " +  '"' + min_alignment_fraction + '"') else ""} \
      ~{if defined(significant_alignment_length) then ("--significant-alignment-length " +  '"' + significant_alignment_length + '"') else ""} \
      ~{true="--use-full-percent-identity" false="" use_full_percent_identity} \
      ~{if defined(min_full_percent_identity) then ("--min-full-percent-identity " +  '"' + min_full_percent_identity + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(similarity_threshold) then ("--similarity-threshold " +  '"' + similarity_threshold + '"') else ""} \
      ~{if defined(cluster_method) then ("--cluster-method " +  '"' + cluster_method + '"') else ""} \
      ~{if defined(representative_method) then ("--representative-method " +  '"' + representative_method + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{true="--just-do-it" false="" just_do_it} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    internal_genomes: "A five-column TAB-delimited flat text file. The header line must contain these columns: 'name', 'bin_id', 'collection_id', 'profile_db_path', 'contigs_db_path'. Each line should list a single entry, where 'name' can be any name to describe the anvi'o bin identified as 'bin_id' that is stored in a collection."
    external_genomes: "A two-column TAB-delimited flat text file that lists anvi'o contigs databases. The first item in the header line should read 'name', and the second should read 'contigs_db_path'. Each line in the file should describe a single entry, where the first column is the name of the genome (or MAG), and the second column is the anvi'o contigs database generated for this genome."
    fast_a_text_file: "A two-column TAB-delimited file that lists multiple FASTA files to import for analysis. If using for `anvi-dereplicate-genomes` or `anvi-compute-distance`, each FASTA is assumed to be a genome. The first item in the header line should read 'name', and the second item should read 'path'. Each line in the field should describe a single entry, where the first column is the name of the FASTA file or corresponding sequence, and the second column is the path to the FASTA file itself."
    ani_dir: "You can import the directory created by `anvi-compute- genome-similarity` if `--program` parameter was set to `fastANI` or `pyANI` and use it for dereplication"
    mash_dir: "You can import the directory created by `anvi-compute- genome-similarity` if `--program` parameter was set to `sourmash` and use it for dereplication"
    output_dir: "Directory path for output files"
    skip_fast_a_report: "By default, if any sequence source is provided, FASTA files of non-redundant genomes are reported. With this flag, no FASTA files are reported."
    report_all: "By default, only FASTA files of non-redundant genomes are reported, i.e. single representatives from each cluster. With this flag, all genome FASTAS will be reported."
    program: "Tell anvi'o which program to run to process genome similarity. For ANI, you can either use pyANI or fastANI. If accuracy is paramount (for example, distinguishing things less than 1 percent different), or for dealing with genomes < 80 percent similar, pyANI is what we recommend. However, fastANI is much faster. If you for some reason want to use mash similarity, you can use sourmash, but its really not intended for genome comparisons."
    fast_ani_km_er_size: "Choose a kmer. The default is 16."
    fragment_length: "Choose a fragment length. The default is 3000."
    min_fraction: "Minimum fraction of alignment to be shared between genome pairs to calculate ANI. If reference and query genome size differ, smaller one among the two is considered. The default is 0.25."
    method: "Method for pyANI. The default is ANIb. You must have the necessary binary in path for whichever method you choose. According to the pyANI help for v0.2.7 at https://github.com/widdowquinn/pyani, the method 'ANIm' uses MUMmer (NUCmer) to align the input sequences. 'ANIb' uses BLASTN+ to align 1020nt fragments of the input sequences. 'ANIblastall': uses the legacy BLASTN to align 1020nt fragments Finally, 'TETRA': calculates tetranucleotide frequencies of each input sequence"
    min_alignment_fraction: "In some cases you may get high raw ANI estimates (percent identity scores) between two genomes that have little to do with each other simply because only a small fraction of their content may be aligned. This filter will set all ANI scores between two genomes to 0 if the alignment fraction is less than you deem trustable. When you set a value, anvi'o will go through the ANI results, and set percent identity scores between two genomes to 0 if the alignment fraction *between either of them* is less than the parameter described here. The default is 0.25."
    significant_alignment_length: "So --min-alignment-fraction discards any hit that is coming from alignments that represent shorter fractions of genomes, but what if you still don't want to miss an alignment that is longer than an X number of nucleotides regardless of what fraction of the genome it represents? Well, this parameter is to recover things that may be lost due to --min- alignment-fraction parameter. Let's say, if you set --min-alignment-fraction to '0.05', and this parameter to '5000', anvi'o will keep hits from alignments that are longer than 5000 nts, EVEN IF THEY REPRESENT less than 5 percent of a given genome pair. Basically if --min-alignment-fraction is your shield to protect yourself from incoming garbage, --significant- alignment-length is your chopstick to pick out those that may be interesting, and you are a true warrior here."
    use_full_percent_identity: "Usually, percent identity is calculated only over aligned regions, and this is what is used as a distance metric by default. But with this flag, you can instead use the *full* percent identity as the distance metric. It is the same as percent identity, except that regions that did not align are included in the calculation. This means *full* percent identity will always be less than or equal to percent identity. How is it calculated? Well if P is the percentage identity calculated in aligned regions, L is the length of the genome, and A is the fraction of the genome that aligned to a compared genome, the full percent identity is P * (A/L). In other words, it is the percent identity multiplied by the alignment coverage. For example, if the alignment is a whopping 97 percent identity but only 8 percent of the genome aligned, the *full* percent identity is 0.970 * 0.080 = 0.078, which is just 7.8 percent."
    min_full_percent_identity: "In some cases you may get high raw ANI estimates (percent identity scores) between two genomes that have little to do with each other simply because only a small fraction of their content may be aligned. This can be partly alleviated by considering the *full* percent identity, which includes in its calculation regions that did not align. For example, if the alignment is a whopping 97 percent identity but only 8 percent of the genome aligned, the *full* percent identity is 0.970 * 0.080 = 0.078 OR 7.8 percent. *full* percent identity is always included in the report, but you can also use it as a filter for other metrics, such as percent identity. This filter will set all ANI measures between two genomes to 0 if the *full* percent identity is less than you deem trustable. When you set a value, anvi'o will go through the ANI results, and set all ANI measures between two genomes to 0 if the *full* percent identity *between either of them* is less than the parameter described here. The default is 20."
    km_er_size: "Set the k-mer size for mash similarity checks. The default is 13."
    scale: "Set the compression ratio for fasta signature file computations. The default is 1000. Smaller ratios decrease sensitivity, while larger ratios will lead to large fasta signatures."
    similarity_threshold: "If two genomes have a similarity greater than or equal to this threshold, they will belong to the same cluster. Since measures of 'similarity' depend strongly on what method is used for calculation, and since the threshold at which two genomes should be considered 'similar enough' to be considered redundant will depend on the application, anvi'o refuses to provide a default parameter. If you're using pyANI, maybe 0.90 is what you're after. If you're using sourmash, maybe 0.25 is what you're after. Or maybe not? Anvi'o is feeling nervous about this decision."
    cluster_method: "Currently, genomes are clustered based on a simple greedy algorithm. Let's say your similarity threshold is 0.90. If genome A is 0.95 similar to B, and B is 0.95 similar to C, and C is 0.95 similar to D, then {A,B,C,D} will form a cluster. This is *even though* D may share a similarity to A of merely 0.80, which is below similarity threshold. You want better alternatives? Contact the developers."
    representative_method: "After genomes are grouped into redundancy clusters, you can define how anvi'o picks the representative genome from the cluster. 'Qscore' computes the genome with the highest completion and lowest redundancy as the representative. 'length' returns the longest genome. 'centrality' returns the genome with the highest average similarity to everything in the cluster, i.e. the most central. The default is centrality"
    num_threads: "Maximum number of threads to use for multithreading whenever possible. Very conservatively, the default is 1. It is a good idea to not exceed the number of CPUs / cores on your system. Plus, please be careful with this option if you are running your commands on a SGE --if you are clusterizing your runs, and asking for multiple threads to use, you may deplete your resources very fast."
    just_do_it: "Don't bother me with questions or warnings, just do it."
    log_file: "File path to store debug/output messages."
  }
}
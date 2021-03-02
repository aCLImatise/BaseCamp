version 1.0

task RunDiscoSnpMLsh {
  input {
    Boolean? f_of
    File? path_compiled_dskascii
    Int? k_size
    Int? min_coverage
    Int? max_coverage
    Int? branching
    Int? symmetrical
    File? graph
    File? stop_discosnp_right
    Int? deletion_max_size
    Int? ambiguity_max_size
    Int? max_snp_per_bubble
    Boolean? f_of_mapping
    String? prefix
    Boolean? no_low_complexity
    Boolean? contigs
    Int? max_substitutions
    Boolean? no_genotype
    Int? max_threads
    File? reference_genome
    Boolean? use_reference_file
    Directory? bwa_path
    Boolean? map_variant_predictions
    Boolean? wraith_mode_only
    Int? verbose_avoids_output
  }
  command <<<
    run_discoSnp___ML_sh \
      ~{if (f_of) then "--fof" else ""} \
      ~{if defined(path_compiled_dskascii) then ("-f " +  '"' + path_compiled_dskascii + '"') else ""} \
      ~{if defined(k_size) then ("--k_size " +  '"' + k_size + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(max_coverage) then ("--max_coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(branching) then ("--branching " +  '"' + branching + '"') else ""} \
      ~{if defined(symmetrical) then ("--symmetrical " +  '"' + symmetrical + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if (stop_discosnp_right) then "-X" else ""} \
      ~{if defined(deletion_max_size) then ("--deletion_max_size " +  '"' + deletion_max_size + '"') else ""} \
      ~{if defined(ambiguity_max_size) then ("--ambiguity_max_size " +  '"' + ambiguity_max_size + '"') else ""} \
      ~{if defined(max_snp_per_bubble) then ("--max_snp_per_bubble " +  '"' + max_snp_per_bubble + '"') else ""} \
      ~{if (f_of_mapping) then "--fof_mapping" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (no_low_complexity) then "--no_low_complexity" else ""} \
      ~{if (contigs) then "--contigs" else ""} \
      ~{if defined(max_substitutions) then ("--max_substitutions " +  '"' + max_substitutions + '"') else ""} \
      ~{if (no_genotype) then "--no_genotype" else ""} \
      ~{if defined(max_threads) then ("--max_threads " +  '"' + max_threads + '"') else ""} \
      ~{if defined(reference_genome) then ("--reference_genome " +  '"' + reference_genome + '"') else ""} \
      ~{if (use_reference_file) then "-R" else ""} \
      ~{if defined(bwa_path) then ("--bwa_path " +  '"' + bwa_path + '"') else ""} \
      ~{if (map_variant_predictions) then "-e" else ""} \
      ~{if (wraith_mode_only) then "-w" else ""} \
      ~{if defined(verbose_avoids_output) then ("-v " +  '"' + verbose_avoids_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f_of: "<file name of a file of file(s)>\\nThe input read files indicated in a file of file(s)\\nExample: -r bank.fof with bank.fof containing the two lines\\ndata_sample/reads_sequence1.fasta\\ndata_sample/reads_sequence2.fasta.gz"
    path_compiled_dskascii: "path to compiled dsk (directory containing compiled dsk and dsk2ascii)"
    k_size: "<int value>\\nSet the length of used kmers. Must fit the compiled value.\\nDefault=31"
    min_coverage: "<int value>\\nSet the minimal coverage per read set: Used by kissnp2 (don't use kmers with lower coverage) and kissreads (read coherency threshold).\\nThis coverage can be automatically detected per read set (in this case use \\\"auto\\\" or specified per read set, see the documentation.\\nDefault=3"
    max_coverage: "<int value in 0, 1 or 2>\\nSet the maximal coverage for each read set: Used by kissnp2 (don't use kmers with higher coverage).\\nDefault=2^31-1"
    branching: "0: forbid variants for which any of the two paths is branching (high precision, lowers the recall in complex genomes).\\nDefault value\\n1: (smart branching) forbid SNPs for which the two paths are branching (e.g. the two paths can be created either with a 'A' or a 'C' at the same position\\n2: No limitation on branching (lowers the precision, high recall)"
    symmetrical: "<int value>\\nIn -b 2 mode only: maximal number of symmetrical crossroads traversed while trying to close a bubble. Default: no limit"
    graph: "Reuse a previously created graph (.h5 file) with same prefix and same k and c parameters."
    stop_discosnp_right: "Stop discoSnp++ right after variant calling - the output is only a fasta file with no coverage information."
    deletion_max_size: "discoSnp++ will search for deletions of size from 1 to D included. Default=100"
    ambiguity_max_size: "Maximal size of ambiguity of INDELs. INDELS whose ambiguity is higher than this value are not output  [default '20']"
    max_snp_per_bubble: "discoSnp++ will search up to P SNPs in a unique bubble. Default=3"
    f_of_mapping: "<file name of a file of file(s)>\\nIf this option is used this fof is used when mapping back reads on the predicted variants instead of the original fof file provided by -r|--fof option"
    prefix: "All out files will start with this prefix. Default=\\\"discoRes\\\""
    no_low_complexity: "Remove low complexity bubbles"
    contigs: "Extend found polymorphisms with contigs (default: extend with unitigs)"
    max_substitutions: "Set the number of authorized substitutions used while mapping reads on found SNPs (kissreads). Default=1"
    no_genotype: "Do not compute the genotypes"
    max_threads: "Max number of used threads. 0 means all threads\\ndefault 0"
    reference_genome: "Reference genome file (fasta, fastq, gzipped or nor). In absence of this file the VCF created by VCF_creator won't contain mapping related results."
    use_reference_file: "Use the reference file also in the variant calling, not only for mapping results"
    bwa_path: "bwa path. e.g. /home/me/my_programs/bwa-0.7.12/ (note that bwa must be pre-compiled)\\nOptional unless option -G used and bwa is not in the binary path."
    map_variant_predictions: "Map variant predictions on reference genome with their unitig or contig extensions.\\nUseless unless mapping on reference genome is required (option -G)."
    wraith_mode_only: "Wraith mode: only show all discoSnp++ commands without running them"
    verbose_avoids_output: "Verbose 0 (avoids progress output) or 1 (enables progress output) -- default=1."
  }
  output {
    File out_stdout = stdout()
    File out_stop_discosnp_right = "${in_stop_discosnp_right}"
  }
}
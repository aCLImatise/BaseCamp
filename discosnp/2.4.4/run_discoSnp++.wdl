version 1.0

task RunDiscoSnp++.sh {
  input {
    Boolean? _prefix_string
    Boolean? _nolowcomplexity_remove
    Boolean? _contigs_extend
    Boolean? _maxsubstitutions_int
    Boolean? _nogenotype_compute
    Boolean? _maxthreads_int
    Boolean? _referencegenome_file
    Boolean? use_reference_file
    Boolean? _bwapath_directory
    Boolean? map_variant_predictions
    Boolean? wraith_mode_only
    String? verbose_avoids_output
  }
  command <<<
    run_discoSnp++.sh \
      ~{true="-p" false="" _prefix_string} \
      ~{true="-l" false="" _nolowcomplexity_remove} \
      ~{true="-T" false="" _contigs_extend} \
      ~{true="-d" false="" _maxsubstitutions_int} \
      ~{true="-n" false="" _nogenotype_compute} \
      ~{true="-u" false="" _maxthreads_int} \
      ~{true="-G" false="" _referencegenome_file} \
      ~{true="-R" false="" use_reference_file} \
      ~{true="-B" false="" _bwapath_directory} \
      ~{true="-e" false="" map_variant_predictions} \
      ~{true="-w" false="" wraith_mode_only} \
      ~{if defined(verbose_avoids_output) then ("-v " +  '"' + verbose_avoids_output + '"') else ""}
  >>>
  parameter_meta {
    _prefix_string: "| --prefix <string> All out files will start with this prefix. Default=\"discoRes\""
    _nolowcomplexity_remove: "| --no_low_complexity Remove low complexity bubbles"
    _contigs_extend: "| --contigs Extend found polymorphisms with contigs (default: extend with unitigs)"
    _maxsubstitutions_int: "| --max_substitutions <int> Set the number of authorized substitutions used while mapping reads on found SNPs (kissreads). Default=1"
    _nogenotype_compute: "| --no_genotype Do not compute the genotypes"
    _maxthreads_int: "| --max_threads <int> Max number of used threads. 0 means all threads default 0"
    _referencegenome_file: "| --reference_genome <file name> Reference genome file (fasta, fastq, gzipped or nor). In absence of this file the VCF created by VCF_creator won't contain mapping related results."
    use_reference_file: "Use the reference file also in the variant calling, not only for mapping results"
    _bwapath_directory: "| --bwa_path <directory name> bwa path. e.g. /home/me/my_programs/bwa-0.7.12/ (note that bwa must be pre-compiled) Optional unless option -G used and bwa is not in the binary path."
    map_variant_predictions: "Map variant predictions on reference genome with their unitig or contig extensions. Useless unless mapping on reference genome is required (option -G). "
    wraith_mode_only: "Wraith mode: only show all discoSnp++ commands without running them"
    verbose_avoids_output: "Verbose 0 (avoids progress output) or 1 (enables progress output) -- default=1."
  }
}
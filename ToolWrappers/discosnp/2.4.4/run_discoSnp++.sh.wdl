version 1.0

task RunDiscoSnpsh {
  input {
    Boolean? f_of
    Boolean? _ksize_value
    Boolean? _mincoverage_value
    Boolean? _maxcoverage_value
    Boolean? _branching_value
    Boolean? _symmetrical_value
    Boolean? _graph_file
    File? stop_discosnp_calling
    Boolean? _deletionmaxsize_intdiscosnp
    Boolean? _ambiguitymaxsize_intmaximal
    Boolean? _maxsnpperbubble_intdiscosnp
    Boolean? f_of_mapping
    Boolean? _prefix_stringall
    Boolean? _nolowcomplexityremove_low
    Boolean? _contigsextend_found
    Boolean? _intset_number
    Boolean? _nogenotypedo_compute
    Boolean? _maxthreads_intmax
    Boolean? _referencegenome_file
    Boolean? use_reference_file
    Boolean? _bwapath_directory
    Boolean? map_variant_predictions
    Boolean? wraith_mode_only
    Int? verbose_avoids_output
  }
  command <<<
    run_discoSnp___sh \
      ~{if (f_of) then "--fof" else ""} \
      ~{if (_ksize_value) then "-k" else ""} \
      ~{if (_mincoverage_value) then "-c" else ""} \
      ~{if (_maxcoverage_value) then "-C" else ""} \
      ~{if (_branching_value) then "-b" else ""} \
      ~{if (_symmetrical_value) then "-s" else ""} \
      ~{if (_graph_file) then "-g" else ""} \
      ~{if (stop_discosnp_calling) then "-X" else ""} \
      ~{if (_deletionmaxsize_intdiscosnp) then "-D" else ""} \
      ~{if (_ambiguitymaxsize_intmaximal) then "-a" else ""} \
      ~{if (_maxsnpperbubble_intdiscosnp) then "-P" else ""} \
      ~{if (f_of_mapping) then "--fof_mapping" else ""} \
      ~{if (_prefix_stringall) then "-p" else ""} \
      ~{if (_nolowcomplexityremove_low) then "-l" else ""} \
      ~{if (_contigsextend_found) then "-T" else ""} \
      ~{if (_intset_number) then "-d" else ""} \
      ~{if (_nogenotypedo_compute) then "-n" else ""} \
      ~{if (_maxthreads_intmax) then "-u" else ""} \
      ~{if (_referencegenome_file) then "-G" else ""} \
      ~{if (use_reference_file) then "-R" else ""} \
      ~{if (_bwapath_directory) then "-B" else ""} \
      ~{if (map_variant_predictions) then "-e" else ""} \
      ~{if (wraith_mode_only) then "-w" else ""} \
      ~{if defined(verbose_avoids_output) then ("-v " +  '"' + verbose_avoids_output + '"') else ""}
  >>>
  parameter_meta {
    f_of: "<file name of a file of file(s)>\\nThe input read files indicated in a file of file(s)\\nExample: -r bank.fof with bank.fof containing the two lines\\ndata_sample/reads_sequence1.fasta\\ndata_sample/reads_sequence2.fasta.gz"
    _ksize_value: "| --k_size value <int value>\\nSet the length of used kmers. Must fit the compiled value.\\nDefault=31"
    _mincoverage_value: "| --min_coverage value <int value>\\nSet the minimal coverage per read set: Used by kissnp2 (don't use kmers with lower coverage) and kissreads (read coherency threshold).\\nThis coverage can be automatically detected per read set (in this case use \\\"auto\\\" or specified per read set, see the documentation.\\nDefault=3"
    _maxcoverage_value: "| --max_coverage value <int value in 0, 1 or 2>\\nSet the maximal coverage for each read set: Used by kissnp2 (don't use kmers with higher coverage).\\nDefault=2^31-1"
    _branching_value: "| --branching value.\\n0: forbid variants for which any of the two paths is branching (high precision, lowers the recall in complex genomes).\\nDefault value\\n1: (smart branching) forbid SNPs for which the two paths are branching (e.g. the two paths can be created either with a 'A' or a 'C' at the same position\\n2: No limitation on branching (lowers the precision, high recall)"
    _symmetrical_value: "| --symmetrical value <int value>\\nIn -b 2 mode only: maximal number of symmetrical crossroads traversed while trying to close a bubble. Default: no limit"
    _graph_file: "| --graph <file name>\\nReuse a previously created graph (.h5 file) with same prefix and same k and c parameters."
    stop_discosnp_calling: "Stop discoSnp++ right after variant calling - the output is only a fasta file with no coverage information."
    _deletionmaxsize_intdiscosnp: "| --deletion_max_size <int>\\ndiscoSnp++ will search for deletions of size from 1 to D included. Default=100"
    _ambiguitymaxsize_intmaximal: "| --ambiguity_max_size <int>\\nMaximal size of ambiguity of INDELs. INDELS whose ambiguity is higher than this value are not output  [default '20']"
    _maxsnpperbubble_intdiscosnp: "| --max_snp_per_bubble <int>\\ndiscoSnp++ will search up to P SNPs in a unique bubble. Default=3"
    f_of_mapping: "<file name of a file of file(s)>\\nIf this option is used this fof is used when mapping back reads on the predicted variants instead of the original fof file provided by -r|--fof option"
    _prefix_stringall: "| --prefix <string>\\nAll out files will start with this prefix. Default=\\\"discoRes\\\""
    _nolowcomplexityremove_low: "| --no_low_complexity\\nRemove low complexity bubbles"
    _contigsextend_found: "| --contigs\\nExtend found polymorphisms with contigs (default: extend with unitigs)"
    _intset_number: "| --max_substitutions <int>\\nSet the number of authorized substitutions used while mapping reads on found SNPs (kissreads). Default=1"
    _nogenotypedo_compute: "| --no_genotype\\nDo not compute the genotypes"
    _maxthreads_intmax: "| --max_threads <int>\\nMax number of used threads. 0 means all threads\\ndefault 0"
    _referencegenome_file: "| --reference_genome <file name>\\nReference genome file (fasta, fastq, gzipped or nor). In absence of this file the VCF created by VCF_creator won't contain mapping related results."
    use_reference_file: "Use the reference file also in the variant calling, not only for mapping results"
    _bwapath_directory: "| --bwa_path <directory name>\\nbwa path. e.g. /home/me/my_programs/bwa-0.7.12/ (note that bwa must be pre-compiled)\\nOptional unless option -G used and bwa is not in the binary path."
    map_variant_predictions: "Map variant predictions on reference genome with their unitig or contig extensions.\\nUseless unless mapping on reference genome is required (option -G)."
    wraith_mode_only: "Wraith mode: only show all discoSnp++ commands without running them"
    verbose_avoids_output: "Verbose 0 (avoids progress output) or 1 (enables progress output) -- default=1."
  }
  output {
    File out_stdout = stdout()
    File out_stop_discosnp_calling = "${in_stop_discosnp_calling}"
  }
}
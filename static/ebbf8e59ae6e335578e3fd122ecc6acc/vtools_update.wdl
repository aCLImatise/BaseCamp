version 1.0

task VtoolsUpdate {
  input {
    String? verbosity
    Array[File] from_file
    Int? build
    File? format
    Int? jobs
    Boolean? sample_name
    Boolean? set
    Boolean? from_stat
    Boolean? limiting_command_eg
    Boolean? genotypes
  }
  command <<<
    vtools update \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(from_file) then ("--from_file " +  '"' + from_file + '"') else ""} \
      ~{if defined(build) then ("--build " +  '"' + build + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (sample_name) then "--sample_name" else ""} \
      ~{if (set) then "--set" else ""} \
      ~{if (from_stat) then "--from_stat" else ""} \
      ~{if (limiting_command_eg) then "-s" else ""} \
      ~{if (genotypes) then "--genotypes" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1)."
    from_file: "A list of files that will be used to add or update\\nexisting fields of variants. The file should be\\ndelimiter separated with format described by parameter\\n--format. Gzipped files are acceptable. If input files\\ncontains genotype information, have been inputted\\nbefore, and can be linked to the samples they created\\nwithout ambiguity (e.g. single sample, or samples with\\ndetectable sample names), genotypes and their\\ninformation will also be updated."
    build: "Build version of the reference genome (e.g. hg18) of\\nthe input files, which should be the primary (used by\\ndefault) or alternative (if available) reference\\ngenome of the project. An alternative reference genome\\nwill be added to the project if needed."
    format: "Format of the input text file. It can be one of the\\nvariant tools supported file types such as\\nANNOVAR_output (cf. 'vtools show formats'), or a local\\nformat specification file (with extension .fmt). Some\\nformats accept parameters (cf. 'vtools show format\\nFMT') and allow you to update additional or\\nalternative fields from the input file."
    jobs: "Number of processes to import input file. Variant\\ntools by default uses a single process for reading and\\nwriting, and can use one or more dedicated reader\\nprocesses (jobs=2 or more) to process input files. Due\\nto the overhead of inter-process communication, more\\njobs do not automatically lead to better performance."
    sample_name: "[SAMPLE_NAME [SAMPLE_NAME ...]], --sample-name [SAMPLE_NAME [SAMPLE_NAME ...]]\\nName of the samples to be updated by the input files.\\nIf unspecified, headers of the genotype columns of the\\nlast comment line (line starts with #) of the input\\nfiles will be used (and thus allow different sample\\nnames for input files). Sample names will be used to\\nidentify samples to be updated. Filename will be used\\nto uniquely identify a sample if mutliple samples with\\nthe same name exist in the project. No genotype info\\nwill be updated if samples cannot be unquely\\ndetermined."
    set: "[EXPR [EXPR ...]]\\nAdd a new field or updating an existing field using a\\nconstant (e.g. mark=1) or an expression using other\\nfields (e.g. freq=num/120, refgene=refGene.name). If\\nmultiple values are returned for a variant, only one\\nof them will be used. Parameter samples could be used\\nto limit the affected variants. In addition, special\\nfunction are provided, including 'HWE_exact' (exact\\ntest of Hardy-Weinberg Equilibrium) and 'Fisher_exact'\\n(Fisher's exact test for case/ctrl association)."
    from_stat: "[EXPR [EXPR ...]], --from-stat [EXPR [EXPR ...]]\\nOne or more expressions such as meanQT=avg(QT) that\\naggregate genotype info (e.g. QT) of variants in all\\nor selected samples to specified fields (e.g. meanQT).\\nFunctions sum, avg, max, and min are currently\\nsupported. In addition, special functions #(GT),\\n#(hom), #(het), #(alt), #(other), #(missing), #(wtGT),\\n#(mutGT), and maf(), are provided to count the number\\nof valid genotypes (not missing), homozygote\\ngenotypes, heterozygote genotypes, alternative alleles\\n(#(het) + 2*#(hom) + #(other)), genotypes with two\\ndifferent alternative alleles, missing genotypes\\n(number of samples - #(GT)), number of non-missing\\nwildtype genotypes (#(GT) - #(hom) - #(het) -\\n#(other)), number of non-wildtype genotypes (#(hom) +\\n#(het) + #(other)), and minor allele frequency. The\\nmaf() function treats chromosomes 1 to 22 as\\nautosomes, X and Y as sex chromosomes, and other\\nchromosomes as single-copy manifolds. It requires a\\nphenotype named sex or gender that codes male/female\\nby 1/2, M/F or Male/Female if maf of variants on sex\\nchromosomes are calculated. This function by default\\ncalculates allele frequency among existing-alleles,\\nbut will treat all missing values as wild type alleles\\nif runtime option treat_missing_as_wildtype is set to\\ntrue."
    limiting_command_eg: "[COND [COND ...]], --samples [COND [COND ...]]\\nLimiting variants from samples that match conditions\\nthat use columns shown in command 'vtools show sample'\\n(e.g. 'aff=1', 'filename like \\\"MG%\\\"')."
    genotypes: "[COND [COND ...]]\\nLimiting variants from samples that match conditions\\nthat use columns shown in command 'vtools show\\ngenotypes' (e.g. 'GQ>15').\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
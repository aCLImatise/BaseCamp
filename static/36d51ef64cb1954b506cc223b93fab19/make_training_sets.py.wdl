version 1.0

task MakeTrainingSetspy {
  input {
    File? in_dir
    File? groups
    Boolean? use_taxonomy
    Int? km_er_size
    Int? km_ers_type
    String? ph_mms
    Int? threads
    Boolean? retrain
    Boolean? absolute_retrain
  }
  command <<<
    make_training_sets_py \
      ~{if defined(in_dir) then ("--indir " +  '"' + in_dir + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{if (use_taxonomy) then "--use_taxonomy" else ""} \
      ~{if defined(km_er_size) then ("--kmer_size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(km_ers_type) then ("--kmers_type " +  '"' + km_ers_type + '"') else ""} \
      ~{if defined(ph_mms) then ("--phmms " +  '"' + ph_mms + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (retrain) then "--retrain" else ""} \
      ~{if (absolute_retrain) then "--absolute_retrain" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0"
  }
  parameter_meta {
    in_dir: "Path to input directory with GenBank file(s) for\\ntraining. This path will be added to file names in\\ngroups file."
    groups: "Path to file two tab-delimited columns: file name and\\ngroup name. If not provided each file will have its\\nown training set."
    use_taxonomy: "If set, taxonomy from input files will be used to\\nupdate or create new groups. This is performed after\\nreading groups file."
    km_er_size: "The size of required kmers. For codon approach use\\nmultiplicity of 3. [Default: 12]"
    km_ers_type: "Approach for creating kmers. Options are: simple (just\\nslicing the sequence from the first position), all\\n(all possible kmers), codon (all possible kmers made\\nwith step of 3 nts to get kmers corresponding\\ntranslated aas). [Default: all]"
    ph_mms: "Phage HMM profile database (like pVOGs) will be mapped\\nagainst the genome of interest and used as additional\\nfeature to identify prophages."
    threads: "Number of threads to use while searching with phmms."
    retrain: "Set if any of reference files previously used for\\ntraining has changed, e.g. prophage protein features\\nindication was modified."
    absolute_retrain: "If set, ignores trainingGenome_list file and PhiSpy's\\ndefault reference genomes. This option allows to train\\nPhiSpy with files provided just by the user."
  }
  output {
    File out_stdout = stdout()
  }
}
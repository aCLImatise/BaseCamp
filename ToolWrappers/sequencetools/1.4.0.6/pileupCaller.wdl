version 1.0

task PileupCaller {
  input {
    Boolean? random_diploid
    Boolean? random_haploid
    Boolean? majority_call
    Boolean? downsampling
    Boolean? keep_incongruent_reads
    Int? seed
    Int? min_depth
    Boolean? skip_transitions
    Boolean? transitions_missing
    Boolean? single_strand_mode
    File? snp_file
    File? eigen_strat_out
    File? sample_pop_name
    Int? sample_names
    File? sample_name_file
    String data_dot
  }
  command <<<
    pileupCaller \
      ~{data_dot} \
      ~{if (random_diploid) then "--randomDiploid" else ""} \
      ~{if (random_haploid) then "--randomHaploid" else ""} \
      ~{if (majority_call) then "--majorityCall" else ""} \
      ~{if (downsampling) then "--downSampling" else ""} \
      ~{if (keep_incongruent_reads) then "--keepIncongruentReads" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(min_depth) then ("--minDepth " +  '"' + min_depth + '"') else ""} \
      ~{if (skip_transitions) then "--skipTransitions" else ""} \
      ~{if (transitions_missing) then "--transitionsMissing" else ""} \
      ~{if (single_strand_mode) then "--singleStrandMode" else ""} \
      ~{if defined(snp_file) then ("--snpFile " +  '"' + snp_file + '"') else ""} \
      ~{if defined(eigen_strat_out) then ("--eigenstratOut " +  '"' + eigen_strat_out + '"') else ""} \
      ~{if defined(sample_pop_name) then ("--samplePopName " +  '"' + sample_pop_name + '"') else ""} \
      ~{if defined(sample_names) then ("--sampleNames " +  '"' + sample_names + '"') else ""} \
      ~{if defined(sample_name_file) then ("--sampleNameFile " +  '"' + sample_name_file + '"') else ""}
  >>>
  parameter_meta {
    random_diploid: ") [--keepIncongruentReads]"
    random_haploid: "This method samples one read at random at each site,\\nand uses the allele on that read as the one for the\\nactual genotype. This results in a haploid call"
    majority_call: "Pick the allele supported by the most reads at a\\nsite. If an equal numbers of alleles fulfil this,\\npick one at random. This results in a haploid call.\\nSee --downSampling for best practices for calling\\nrare variants"
    downsampling: "When this switch is given, the MajorityCalling mode\\nwill downsample from the total number of reads a\\nnumber of reads (without replacement) equal to the\\n--minDepth given. This mitigates reference bias in\\nthe MajorityCalling model, which increases with\\nhigher coverage. The recommendation for rare-allele\\ncalling is --majorityCall --downsampling --minDepth 3"
    keep_incongruent_reads: "By default, pileupCaller now removes reads with\\ntri-allelic alleles that are neither of the two\\nalleles specified in the SNP file. To keep those\\nreads for sampling, set this flag. With this option\\ngiven, if the sampled read has a tri-allelic allele\\nthat is neither of the two given alleles in the SNP\\nfile, a missing genotype is generated. IMPORTANT\\nNOTE: The default behaviour has changed in\\npileupCaller version 1.4.0. If you want to emulate\\nthe previous behaviour, use this flag. I recommend\\nnow to NOT set this flag and use the new behaviour."
    seed: "random seed used for the random number generator. If\\nnot given, use system clock to seed the random number\\ngenerator."
    min_depth: "specify the minimum depth for a call. For sites with\\nfewer reads than this number, declare\\nMissing (default: 1)"
    skip_transitions: "skip transition SNPs entirely in the output,\\nresulting in a dataset with fewer sites."
    transitions_missing: "mark transitions as missing in the output, but do\\noutput the sites."
    single_strand_mode: "[THIS IS CURRENTLY AN EXPERIMENTAL FEATURE]. At C/T\\npolymorphisms, ignore reads aligning to the forward\\nstrand. At G/A polymorphisms, ignore reads aligning\\nto the reverse strand. This should remove post-mortem\\ndamage in ancient DNA libraries prepared with the\\nnon-UDG single-stranded protocol."
    snp_file: "an Eigenstrat-formatted SNP list file for the\\npositions and alleles to call. All positions in the\\nSNP file will be output, adding missing data where\\nthere is no data. Note that pileupCaller\\nautomatically checks whether alleles in the SNP file\\nare flipped with respect to the human reference, and\\nin those cases flips the genotypes accordingly. But\\nit assumes that the strand-orientation of the SNPs\\ngiven in the SNP list is the one in the reference\\ngenome used in the BAM file underlying the pileup\\ninput. Note that both the SNP file and the incoming\\npileup data have to be ordered by chromosome and\\nposition, and this is checked. The chromosome order\\nin humans is 1-22,X,Y,MT. Chromosome can generally\\nbegin with \\\"chr\\\". In case of non-human data with\\ndifferent chromosome names, you should convert all\\nnames to numbers. They will always considered to be\\nnumerically ordered, even beyond 22. Finally, I note\\nthat for internally, X is converted to 23, Y to 24\\nand MT to 90. This is the most widely used encoding\\nin Eigenstrat databases for human data, so using a\\nSNP file with that encoding will automatically be\\ncorrectly aligned to pileup data with actual\\nchromosome names X, Y and MT (or chrX, chrY and\\nchrMT, respectively)."
    eigen_strat_out: "Set Eigenstrat as output format. Specify the\\nfilenames for the EigenStrat SNP and IND file\\noutputs: <FILE_PREFIX>.snp.txt and\\n<FILE_PREFIX>.ind.txt If not set, output will be\\nFreqSum (Default). Note that freqSum format,\\ndescribed at\\nhttps://rarecoal-docs.readthedocs.io/en/latest/rarecoal-tools.html#vcf2freqsum,\\nis useful for testing your pipeline, since it's\\noutput to standard out"
    sample_pop_name: "specify the population name of the samples, which is\\nincluded in the output *.ind.txt file in Eigenstrat\\noutput. This will be ignored if the output format is\\nnot Eigenstrat (default: \\\"Unknown\\\")"
    sample_names: ",NAME2,...\\ngive the names of the samples as comma-separated list\\n(no spaces)"
    sample_name_file: "give the names of the samples in a file with one name\\nper line\\n"
    data_dot: "This tool is part of sequenceTools version 1.4.0.5"
  }
  output {
    File out_stdout = stdout()
    File out_eigen_strat_out = "${in_eigen_strat_out}"
    File out_sample_pop_name = "${in_sample_pop_name}"
  }
}
class: CommandLineTool
id: pileupCaller.cwl
inputs:
- id: in_random_haploid
  doc: "This method samples one read at random at each site,\nand uses the allele\
    \ on that read as the one for the\nactual genotype. This results in a haploid\
    \ call"
  type: boolean?
  inputBinding:
    prefix: --randomHaploid
- id: in_majority_call
  doc: "Pick the allele supported by the most reads at a\nsite. If an equal numbers\
    \ of alleles fulfil this,\npick one at random. This results in a haploid call.\n\
    See --downSampling for best practices for calling\nrare variants"
  type: boolean?
  inputBinding:
    prefix: --majorityCall
- id: in_downsampling
  doc: "When this switch is given, the MajorityCalling mode\nwill downsample from\
    \ the total number of reads a\nnumber of reads (without replacement) equal to\
    \ the\n--minDepth given. This mitigates reference bias in\nthe MajorityCalling\
    \ model, which increases with\nhigher coverage. The recommendation for rare-allele\n\
    calling is --majorityCall --downsampling --minDepth 3"
  type: boolean?
  inputBinding:
    prefix: --downSampling
- id: in_random_diploid
  doc: "Sample two reads at random (without replacement) at\neach site and represent\
    \ the individual by a diploid\ngenotype constructed from those two random picks.\n\
    This will always assign missing data to positions\nwhere only one read is present,\
    \ even if minDepth=1.\nThe main use case for this option is for estimating\nmean\
    \ heterozygosity across sites."
  type: boolean?
  inputBinding:
    prefix: --randomDiploid
- id: in_keep_incongruent_reads
  doc: "By default, pileupCaller now removes reads with\ntri-allelic alleles that\
    \ are neither of the two\nalleles specified in the SNP file. To keep those\nreads\
    \ for sampling, set this flag. With this option\ngiven, if the sampled read has\
    \ a tri-allelic allele\nthat is neither of the two given alleles in the SNP\n\
    file, a missing genotype is generated. IMPORTANT\nNOTE: The default behaviour\
    \ has changed in\npileupCaller version 1.4.0. If you want to emulate\nthe previous\
    \ behaviour, use this flag. I recommend\nnow to NOT set this flag and use the\
    \ new behaviour."
  type: boolean?
  inputBinding:
    prefix: --keepIncongruentReads
- id: in_seed
  doc: "random seed used for the random number generator. If\nnot given, use system\
    \ clock to seed the random number\ngenerator."
  type: long?
  inputBinding:
    prefix: --seed
- id: in_min_depth
  doc: "specify the minimum depth for a call. For sites with\nfewer reads than this\
    \ number, declare\nMissing (default: 1)"
  type: long?
  inputBinding:
    prefix: --minDepth
- id: in_skip_transitions
  doc: "skip transition SNPs entirely in the output,\nresulting in a dataset with\
    \ fewer sites."
  type: boolean?
  inputBinding:
    prefix: --skipTransitions
- id: in_transitions_missing
  doc: "mark transitions as missing in the output, but do\noutput the sites."
  type: boolean?
  inputBinding:
    prefix: --transitionsMissing
- id: in_single_strand_mode
  doc: "[THIS IS CURRENTLY AN EXPERIMENTAL FEATURE]. At C/T\npolymorphisms, ignore\
    \ reads aligning to the forward\nstrand. At G/A polymorphisms, ignore reads aligning\n\
    to the reverse strand. This should remove post-mortem\ndamage in ancient DNA libraries\
    \ prepared with the\nnon-UDG single-stranded protocol."
  type: boolean?
  inputBinding:
    prefix: --singleStrandMode
- id: in_snp_file
  doc: "an Eigenstrat-formatted SNP list file for the\npositions and alleles to call.\
    \ All positions in the\nSNP file will be output, adding missing data where\nthere\
    \ is no data. Note that pileupCaller\nautomatically checks whether alleles in\
    \ the SNP file\nare flipped with respect to the human reference, and\nin those\
    \ cases flips the genotypes accordingly. But\nit assumes that the strand-orientation\
    \ of the SNPs\ngiven in the SNP list is the one in the reference\ngenome used\
    \ in the BAM file underlying the pileup\ninput. Note that both the SNP file and\
    \ the incoming\npileup data have to be ordered by chromosome and\nposition, and\
    \ this is checked. The chromosome order\nin humans is 1-22,X,Y,MT. Chromosome\
    \ can generally\nbegin with \"chr\". In case of non-human data with\ndifferent\
    \ chromosome names, you should convert all\nnames to numbers. They will always\
    \ considered to be\nnumerically ordered, even beyond 22. Finally, I note\nthat\
    \ for internally, X is converted to 23, Y to 24\nand MT to 90. This is the most\
    \ widely used encoding\nin Eigenstrat databases for human data, so using a\nSNP\
    \ file with that encoding will automatically be\ncorrectly aligned to pileup data\
    \ with actual\nchromosome names X, Y and MT (or chrX, chrY and\nchrMT, respectively)."
  type: File?
  inputBinding:
    prefix: --snpFile
- id: in_eigen_strat_out
  doc: "Set Eigenstrat as output format. Specify the\nfilenames for the EigenStrat\
    \ SNP and IND file\noutputs: <FILE_PREFIX>.snp.txt and\n<FILE_PREFIX>.ind.txt\
    \ If not set, output will be\nFreqSum (Default). Note that freqSum format,\ndescribed\
    \ at\nhttps://rarecoal-docs.readthedocs.io/en/latest/rarecoal-tools.html#vcf2freqsum,\n\
    is useful for testing your pipeline, since it's\noutput to standard out"
  type: File?
  inputBinding:
    prefix: --eigenstratOut
- id: in_sample_pop_name
  doc: "specify the population name of the samples, which is\nincluded in the output\
    \ *.ind.txt file in Eigenstrat\noutput. This will be ignored if the output format\
    \ is\nnot Eigenstrat (default: \"Unknown\")"
  type: File?
  inputBinding:
    prefix: --samplePopName
- id: in_sample_names
  doc: ",NAME2,...\ngive the names of the samples as comma-separated list\n(no spaces)"
  type: long?
  inputBinding:
    prefix: --sampleNames
- id: in_sample_name_file
  doc: "give the names of the samples in a file with one name\nper line\n"
  type: File?
  inputBinding:
    prefix: --sampleNameFile
- id: in_data_dot
  doc: This tool is part of sequenceTools version 1.4.0.5
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_eigen_strat_out
  doc: "Set Eigenstrat as output format. Specify the\nfilenames for the EigenStrat\
    \ SNP and IND file\noutputs: <FILE_PREFIX>.snp.txt and\n<FILE_PREFIX>.ind.txt\
    \ If not set, output will be\nFreqSum (Default). Note that freqSum format,\ndescribed\
    \ at\nhttps://rarecoal-docs.readthedocs.io/en/latest/rarecoal-tools.html#vcf2freqsum,\n\
    is useful for testing your pipeline, since it's\noutput to standard out"
  type: File?
  outputBinding:
    glob: $(inputs.in_eigen_strat_out)
- id: out_sample_pop_name
  doc: "specify the population name of the samples, which is\nincluded in the output\
    \ *.ind.txt file in Eigenstrat\noutput. This will be ignored if the output format\
    \ is\nnot Eigenstrat (default: \"Unknown\")"
  type: File?
  outputBinding:
    glob: $(inputs.in_sample_pop_name)
hints: []
cwlVersion: v1.1
baseCommand:
- pileupCaller

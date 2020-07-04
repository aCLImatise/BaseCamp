class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pileupCaller.cwl
inputs:
- id: random_diploid
  doc: ') [--keepIncongruentReads] '
  type: boolean
  inputBinding:
    prefix: --randomDiploid
- id: single_strand_mode
  doc: '] (-f|--snpFile <FILE>) '
  type: boolean
  inputBinding:
    prefix: --singleStrandMode
- id: random_haploid
  doc: This method samples one read at random at each site, and uses the allele on
    that read as the one for the actual genotype. This results in a haploid call
  type: boolean
  inputBinding:
    prefix: --randomHaploid
- id: majority_call
  doc: Pick the allele supported by the most reads at a site. If an equal numbers
    of alleles fulfil this, pick one at random. This results in a haploid call. See
    --downSampling for best practices for calling rare variants
  type: boolean
  inputBinding:
    prefix: --majorityCall
- id: downsampling
  doc: When this switch is given, the MajorityCalling mode will downsample from the
    total number of reads a number of reads (without replacement) equal to the --minDepth
    given. This mitigates reference bias in the MajorityCalling model, which increases
    with higher coverage. The recommendation for rare-allele calling is --majorityCall
    --downsampling --minDepth 3
  type: boolean
  inputBinding:
    prefix: --downSampling
- id: keep_incongruent_reads
  doc: 'By default, pileupCaller now removes reads with tri-allelic alleles that are
    neither of the two alleles specified in the SNP file. To keep those reads for
    sampling, set this flag. With this option given, if the sampled read has a tri-allelic
    allele that is neither of the two given alleles in the SNP file, a missing genotype
    is generated. IMPORTANT NOTE: The default behaviour has changed in pileupCaller
    version 1.4.0. If you want to emulate the previous behaviour, use this flag. I
    recommend now to NOT set this flag and use the new behaviour.'
  type: boolean
  inputBinding:
    prefix: --keepIncongruentReads
- id: seed
  doc: random seed used for the random number generator. If not given, use system
    clock to seed the random number generator.
  type: string
  inputBinding:
    prefix: --seed
- id: min_depth
  doc: 'specify the minimum depth for a call. For sites with fewer reads than this
    number, declare Missing (default: 1)'
  type: string
  inputBinding:
    prefix: --minDepth
- id: skip_transitions
  doc: skip transition SNPs entirely in the output, resulting in a dataset with fewer
    sites.
  type: boolean
  inputBinding:
    prefix: --skipTransitions
- id: transitions_missing
  doc: mark transitions as missing in the output, but do output the sites.
  type: boolean
  inputBinding:
    prefix: --transitionsMissing
- id: snp_file
  doc: an Eigenstrat-formatted SNP list file for the positions and alleles to call.
    All positions in the SNP file will be output, adding missing data where there
    is no data. Note that pileupCaller automatically checks whether alleles in the
    SNP file are flipped with respect to the human reference, and in those cases flips
    the genotypes accordingly. But it assumes that the strand-orientation of the SNPs
    given in the SNP list is the one in the reference genome used in the BAM file
    underlying the pileup input. Note that both the SNP file and the incoming pileup
    data have to be ordered by chromosome and position, and this is checked. The chromosome
    order in humans is 1-22,X,Y,MT. Chromosome can generally begin with "chr". In
    case of non-human data with different chromosome names, you should convert all
    names to numbers. They will always considered to be numerically ordered, even
    beyond 22. Finally, I note that for internally, X is converted to 23, Y to 24
    and MT to 90. This is the most widely used encoding in Eigenstrat databases for
    human data, so using a SNP file with that encoding will automatically be correctly
    aligned to pileup data with actual chromosome names X, Y and MT (or chrX, chrY
    and chrMT, respectively).
  type: File
  inputBinding:
    prefix: --snpFile
- id: eigen_strat_out
  doc: "Set Eigenstrat as output format. Specify the filenames for the EigenStrat\
    \ SNP and IND file outputs: <FILE_PREFIX>.snp.txt and <FILE_PREFIX>.ind.txt If\
    \ not set, output will be FreqSum (Default). Note that freqSum format, described\
    \ at https://rarecoal-docs.readthedocs.io/en/latest/rarecoal-tools.html#vcf2freqsum,\
    \ is useful for testing your pipeline, since it's output to standard out"
  type: File
  inputBinding:
    prefix: --eigenstratOut
- id: sample_pop_name
  doc: 'specify the population name of the samples, which is included in the output
    *.ind.txt file in Eigenstrat output. This will be ignored if the output format
    is not Eigenstrat (default: "Unknown")'
  type: string
  inputBinding:
    prefix: --samplePopName
- id: sample_names
  doc: ',NAME2,... give the names of the samples as comma-separated list (no spaces)'
  type: string
  inputBinding:
    prefix: --sampleNames
- id: sample_name_file
  doc: give the names of the samples in a file with one name per line
  type: File
  inputBinding:
    prefix: --sampleNameFile
outputs: []
cwlVersion: v1.1
baseCommand:
- pileupCaller

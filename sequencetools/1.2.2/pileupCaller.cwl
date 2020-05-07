class: CommandLineTool
id: pileupCaller.cwl
inputs:
- id: mode
  doc: 'specify the mode of calling. MajorityCalling: Pick the allele supported by
    the most reads. If an equal numbers of Alleles fulfil this, pick one at random.
    This results in a haploid call.RandomCalling: Pick one read at random. This results
    in a haploid call;RareCalling (deprecated!): If at least n reads support the non-reference
    allele, call a heterozygote, otherwise call homozygous reference, where n is set
    by --minSupport;RandomDiploid: Sample two random reads at random and represent
    the individual by the diploid genotype constructed from those two random picks.
    This will always assign missing data to positions where only one read is present,
    even if minDepth=1. (default: "RandomCalling")'
  type: string
  inputBinding:
    prefix: --mode
- id: seed
  doc: random seed used for random calling. If not given, use system clock to seed
    the random number generator
  type: string
  inputBinding:
    prefix: --seed
- id: min_depth
  doc: 'specify the minimum depth for a call. For sites with fewer reads than this
    number, declare Missing (default: 1)'
  type: string
  inputBinding:
    prefix: --minDepth
- id: min_support
  doc: 'specify the minimum number of supporting reads for the RareCalling (deprecated)
    method. This option is ignored for other calling methods. For RareCalling, you
    should use --minSupport 2 or higher. (default: 1)'
  type: long
  inputBinding:
    prefix: --minSupport
- id: with_downsampling
  doc: When this switch is given, the MajorityCalling mode with downsample from the
    total number of reads a number of reads (without replacement) equal to the --minDepth
    given. This mitigates a subtle reference bias in the MajorityCalling model.
  type: boolean
  inputBinding:
    prefix: --withDownSampling
- id: transitions_mode
  doc: 'Three options possible: SkipTransitions: skip transitions in the output; TransitionsMissing:
    output transition sites as missing data in all samples; AllSites: output all sites
    including transitions. (default: AllSites)'
  type: string
  inputBinding:
    prefix: --transitionsMode
- id: snp_file
  doc: specify an Eigenstrat SNP file for the positions and alleles to call. All positions
    in the SNP file will be output, adding missing data where necessary. Note that
    pileupCaller automatically checks whether alleles in the SNP file are flipped
    with respect to the human reference. But it assumes that the strand-orientation
    is the same.
  type: File
  inputBinding:
    prefix: --snpFile
- id: out_chrom
  doc: specify the output chromosome name. This can be useful if the input chromosome
    name is something like 'chr1' and you would like to merge with a dataset that
    has just '1'.
  type: string
  inputBinding:
    prefix: --outChrom
- id: format
  doc: 'specify output format: EigenStrat or FreqSum (default: FreqSumFormat)'
  type: string
  inputBinding:
    prefix: --format
- id: sample_names
  doc: ',NAME2,... give the names of the samples as comma-separated list'
  type: string
  inputBinding:
    prefix: --sampleNames
- id: sample_name_file
  doc: give the names of the samples in a file with one name per line
  type: File
  inputBinding:
    prefix: --sampleNameFile
- id: sample_pop_name
  doc: 'specify the population name of the samples, which is included in the output
    *.ind.txt file. This will be ignored if the output format is not Eigenstrat (default:
    "Unknown")'
  type: string
  inputBinding:
    prefix: --samplePopName
- id: eigen_strat_out_prefix
  doc: 'specify the filenames for the EigenStrat SNP and IND file outputs: <FILE_PREFIX>.snp.txt
    and <FILE_PREFIX>.ind.txt Ignored if Output format is not Eigenstrat'
  type: File
  inputBinding:
    prefix: --eigenstratOutPrefix
outputs: []
cwlVersion: v1.1
baseCommand:
- pileupCaller

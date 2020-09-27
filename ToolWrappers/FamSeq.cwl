class: CommandLineTool
id: FamSeq.cwl
inputs:
- id: in_vcf_file
  doc: The name of input vcf file.
  type: boolean
  inputBinding:
    prefix: -vcfFile
- id: in_lk_file
  doc: The name of input likelihood only format file.
  type: boolean
  inputBinding:
    prefix: -lkFile
- id: in_lk_type
  doc: 'likelihood type stored in the likelihood only format file. n:normal(default);
    log10: log10 scaled; ln: ln scaled; PS: phred scaled.'
  type: File
  inputBinding:
    prefix: -lkType
- id: in_ped_file
  doc: The name of the file storing the pedigree information.
  type: boolean
  inputBinding:
    prefix: -pedFile
- id: in_output
  doc: The name of output file
  type: File
  inputBinding:
    prefix: -output
- id: in_method
  doc: 'Choose the method used in variant calling. 1(default): Bayesian network; 2:
    Elston-Stewart algorithm; 3: MCMC.'
  type: boolean
  inputBinding:
    prefix: -method
- id: in_m_rate
  doc: Mutation rate. The default value is 1e-7
  type: boolean
  inputBinding:
    prefix: -mRate
- id: in_only_record_position
  doc: 'Only record the position at which the genotype is not RR in the output file.
    (R: reference allele, A: alternative allele).'
  type: File
  inputBinding:
    prefix: -v
- id: in_record_position_output
  doc: Record all the position in the output file.
  type: File
  inputBinding:
    prefix: -a
- id: in_genopro_bn
  doc: 'Genotype probability of three kinds of genotype for autosome in population
    (Pr(G)) when the variant is not in dbSNP. The default value is:  0.9985, 0.001
    and 0.0005. The dbSNP position should be provided in column ID in input vcf file.'
  type: boolean
  inputBinding:
    prefix: -genoProbN
- id: in_genopro_bk
  doc: 'Genotype probability of three kinds of genotype for autosome in population
    (Pr(G)) when the variant is in dbSNP. The default value is: 0.45, 0.1 and 0.45.'
  type: boolean
  inputBinding:
    prefix: -genoProbK
- id: in_genopro_bxn
  doc: 'Genotype probability of two kinds of genotype for chromosome X for male in
    population (Pr(G)) when the variant is not in dbSNP. The default value is: 0.999
    and 0.001.'
  type: boolean
  inputBinding:
    prefix: -genoProbXN
- id: in_genopro_bx_k
  doc: 'Genotype probability of two kinds of genotype for chromosome X for male in
    population (Pr(G)) when the variant is in dbSNP. The default value is: 0.5 and
    0.5.'
  type: boolean
  inputBinding:
    prefix: -genoProbXK
- id: in_num_burnin
  doc: Number of burn in when the user chooses the MCMC method. The default value
    is 1,000n, where n is the number of individuals in the pedigree.
  type: boolean
  inputBinding:
    prefix: -numBurnIn
- id: in_num_rep
  doc: Number of iteration times when the user chooses MCMC method. The default value
    is 20,000n.
  type: boolean
  inputBinding:
    prefix: -numRep
- id: in_input_type
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The name of output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_only_record_position
  doc: 'Only record the position at which the genotype is not RR in the output file.
    (R: reference allele, A: alternative allele).'
  type: File
  outputBinding:
    glob: $(inputs.in_only_record_position)
- id: out_record_position_output
  doc: Record all the position in the output file.
  type: File
  outputBinding:
    glob: $(inputs.in_record_position_output)
cwlVersion: v1.1
baseCommand:
- FamSeq

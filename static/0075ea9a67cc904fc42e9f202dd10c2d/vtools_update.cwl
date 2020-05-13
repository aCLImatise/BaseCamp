class: CommandLineTool
id: vtools_update.cwl
inputs:
- id: table
  doc: variants to be updated.
  type: string
  inputBinding:
    position: 0
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
- id: from_file
  doc: A list of files that will be used to add or update existing fields of variants.
    The file should be delimiter separated with format described by parameter --format.
    Gzipped files are acceptable. If input files contains genotype information, have
    been inputted before, and can be linked to the samples they created without ambiguity
    (e.g. single sample, or samples with detectable sample names), genotypes and their
    information will also be updated.
  type: string[]
  inputBinding:
    prefix: --from_file
- id: build
  doc: Build version of the reference genome (e.g. hg18) of the input files, which
    should be the primary (used by default) or alternative (if available) reference
    genome of the project. An alternative reference genome will be added to the project
    if needed.
  type: string
  inputBinding:
    prefix: --build
- id: format
  doc: Format of the input text file. It can be one of the variant tools supported
    file types such as ANNOVAR_output (cf. 'vtools show formats'), or a local format
    specification file (with extension .fmt). Some formats accept parameters (cf.
    'vtools show format FMT') and allow you to update additional or alternative fields
    from the input file.
  type: string
  inputBinding:
    prefix: --format
- id: jobs
  doc: Number of processes to import input file. Variant tools by default uses a single
    process for reading and writing, and can use one or more dedicated reader processes
    (jobs=2 or more) to process input files. Due to the overhead of inter-process
    communication, more jobs do not automatically lead to better performance.
  type: string
  inputBinding:
    prefix: --jobs
- id: sample_name
  doc: '[SAMPLE_NAME [SAMPLE_NAME ...]], --sample-name [SAMPLE_NAME [SAMPLE_NAME ...]]
    Name of the samples to be updated by the input files. If unspecified, headers
    of the genotype columns of the last comment line (line starts with #) of the input
    files will be used (and thus allow different sample names for input files). Sample
    names will be used to identify samples to be updated. Filename will be used to
    uniquely identify a sample if mutliple samples with the same name exist in the
    project. No genotype info will be updated if samples cannot be unquely determined.'
  type: boolean
  inputBinding:
    prefix: --sample_name
- id: set
  doc: "[EXPR [EXPR ...]] Add a new field or updating an existing field using a constant\
    \ (e.g. mark=1) or an expression using other fields (e.g. freq=num/120, refgene=refGene.name).\
    \ If multiple values are returned for a variant, only one of them will be used.\
    \ Parameter samples could be used to limit the affected variants. In addition,\
    \ special function are provided, including 'HWE_exact' (exact test of Hardy-Weinberg\
    \ Equilibrium) and 'Fisher_exact' (Fisher's exact test for case/ctrl association)."
  type: boolean
  inputBinding:
    prefix: --set
- id: from_stat
  doc: '[EXPR [EXPR ...]], --from-stat [EXPR [EXPR ...]] One or more expressions such
    as meanQT=avg(QT) that aggregate genotype info (e.g. QT) of variants in all or
    selected samples to specified fields (e.g. meanQT). Functions sum, avg, max, and
    min are currently supported. In addition, special functions #(GT), #(hom), #(het),
    #(alt), #(other), #(missing), #(wtGT), #(mutGT), and maf(), are provided to count
    the number of valid genotypes (not missing), homozygote genotypes, heterozygote
    genotypes, alternative alleles (#(het) + 2*#(hom) + #(other)), genotypes with
    two different alternative alleles, missing genotypes (number of samples - #(GT)),
    number of non-missing wildtype genotypes (#(GT) - #(hom) - #(het) - #(other)),
    number of non-wildtype genotypes (#(hom) + #(het) + #(other)), and minor allele
    frequency. The maf() function treats chromosomes 1 to 22 as autosomes, X and Y
    as sex chromosomes, and other chromosomes as single-copy manifolds. It requires
    a phenotype named sex or gender that codes male/female by 1/2, M/F or Male/Female
    if maf of variants on sex chromosomes are calculated. This function by default
    calculates allele frequency among existing-alleles, but will treat all missing
    values as wild type alleles if runtime option treat_missing_as_wildtype is set
    to true.'
  type: boolean
  inputBinding:
    prefix: --from_stat
- id: s
  doc: "[COND [COND ...]], --samples [COND [COND ...]] Limiting variants from samples\
    \ that match conditions that use columns shown in command 'vtools show sample'\
    \ (e.g. 'aff=1', 'filename like \"MG%\"')."
  type: boolean
  inputBinding:
    prefix: -s
- id: genotypes
  doc: "[COND [COND ...]] Limiting variants from samples that match conditions that\
    \ use columns shown in command 'vtools show genotypes' (e.g. 'GQ>15')."
  type: boolean
  inputBinding:
    prefix: --genotypes
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- update

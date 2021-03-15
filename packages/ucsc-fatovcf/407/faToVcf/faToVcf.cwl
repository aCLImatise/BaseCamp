class: CommandLineTool
id: faToVcf.cwl
inputs:
- id: in_ambiguous_ton
  doc: Treat all IUPAC ambiguous bases (N, R, V etc) as N (no call).
  type: boolean?
  inputBinding:
    prefix: -ambiguousToN
- id: in_exclude_file
  doc: Exclude sequences named in file which has one sequence name per line
  type: File?
  inputBinding:
    prefix: -excludeFile
- id: in_include_ref
  doc: "Include the reference in the genotype columns\n(default: omitted as redundant)"
  type: boolean?
  inputBinding:
    prefix: -includeRef
- id: in_mask_sites
  doc: "Exclude variants in positions recommended for masking in file\n(typically\
    \ https://github.com/W-L/ProblematicSites_SARS-CoV2/raw/master/problematic_sites_sarsCov2.vcf)"
  type: File?
  inputBinding:
    prefix: -maskSites
- id: in_min_ac
  doc: Ignore alternate alleles observed fewer than N times
  type: string?
  inputBinding:
    prefix: -minAc
- id: in_no_genotypes
  doc: Output 8-column VCF, without the sample genotype columns
  type: boolean?
  inputBinding:
    prefix: -noGenotypes
- id: in_ref
  doc: "Use seqName as the reference sequence; must be present in faFile\n(default:\
    \ first sequence in faFile)"
  type: string?
  inputBinding:
    prefix: -ref
- id: in_resolve_ambiguous
  doc: "For IUPAC ambiguous characters like R (A or G), if the character\nrepresents\
    \ two bases and one is the reference base, convert it to the\nnon-reference base.\
    \  Otherwise convert it to N."
  type: boolean?
  inputBinding:
    prefix: -resolveAmbiguous
- id: in_start_offset
  doc: Add N bases to each position (for trimmed alignments)
  type: string?
  inputBinding:
    prefix: -startOffset
- id: in_vcf_chrom
  doc: 'Use seqName for the CHROM column in VCF (default: ref sequence)'
  type: string?
  inputBinding:
    prefix: -vcfChrom
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ucsc-fatovcf:407--hd50662f_0
cwlVersion: v1.1
baseCommand:
- faToVcf

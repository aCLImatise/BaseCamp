class: CommandLineTool
id: bcftools_view.cwl
inputs:
- id: in_drop_genotypes
  doc: drop individual genotype information (after subsetting if -s option set)
  type: boolean?
  inputBinding:
    prefix: --drop-genotypes
- id: in_compression_level
  doc: '[0-9]     compression level: 0 uncompressed, 1 best speed, 9 best compression
    [-1]'
  type: boolean?
  inputBinding:
    prefix: --compression-level
- id: in_no_version
  doc: do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
- id: in_output
  doc: output file name [stdout]
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_regions
  doc: restrict to comma-separated list of regions
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_targets
  doc: '[^]<region>           similar to -r but streams rather than index-jumps. Exclude
    regions with "^" prefix'
  type: boolean?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: '[^]<file>        similar to -R but streams rather than index-jumps. Exclude
    regions with "^" prefix'
  type: boolean?
  inputBinding:
    prefix: --targets-file
- id: in_threads
  doc: use multithreading with <int> worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_trim_alt_alleles
  doc: trim ALT alleles not seen in the genotype fields (or their subset with -s/-S)
  type: boolean?
  inputBinding:
    prefix: --trim-alt-alleles
- id: in_no_update
  doc: do not (re)calculate INFO fields for the subset (currently INFO/AC and INFO/AN)
  type: boolean?
  inputBinding:
    prefix: --no-update
- id: in_samples
  doc: '[^]<list>       comma separated list of samples to include (or exclude with
    "^" prefix)'
  type: boolean?
  inputBinding:
    prefix: --samples
- id: in_samples_file
  doc: '[^]<file>  file of samples to include (or exclude with "^" prefix)'
  type: boolean?
  inputBinding:
    prefix: --samples-file
- id: in_force_samples
  doc: only warn about unknown subset samples
  type: boolean?
  inputBinding:
    prefix: --force-samples
- id: in_c__minacmaxac
  doc: "/C, --min-ac/--max-ac <int>[:<type>]      minimum/maximum count for non-reference\
    \ (nref), 1st alternate (alt1), least frequent\n(minor), most frequent (major)\
    \ or sum of all but most frequent (nonmajor) alleles [nref]"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_apply_filters
  doc: require at least one of the listed FILTER strings (e.g. "PASS,.")
  type: string?
  inputBinding:
    prefix: --apply-filters
- id: in_genotype
  doc: '[^]<hom|het|miss>          require one or more hom/het/missing genotype or,
    if prefixed with "^", exclude sites with hom/het/missing genotypes'
  type: boolean?
  inputBinding:
    prefix: --genotype
- id: in_e_includeexclude_expr
  doc: /e, --include/--exclude <expr>            select/exclude sites for which the
    expression is true (see man page for details)
  type: boolean?
  inputBinding:
    prefix: -i
- id: in__knownnovel_select
  doc: /n, --known/--novel                       select known/novel sites only (ID
    is not/is '.')
  type: boolean?
  inputBinding:
    prefix: -k
- id: in__minallelesmaxalleles_int
  doc: /M, --min-alleles/--max-alleles <int>     minimum/maximum number of alleles
    listed in REF and ALT (e.g. -m2 -M2 for biallelic sites)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_p__phasedexcludephased
  doc: /P, --phased/--exclude-phased             select/exclude sites where all samples
    are phased
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_q__minafmaxaf
  doc: "/Q, --min-af/--max-af <float>[:<type>]    minimum/maximum frequency for non-reference\
    \ (nref), 1st alternate (alt1), least frequent\n(minor), most frequent (major)\
    \ or sum of all but most frequent (nonmajor) alleles [nref]"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_u__uncalledexcludeuncalled
  doc: /U, --uncalled/--exclude-uncalled         select/exclude sites without a called
    genotype
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_v__typesexcludetypes
  doc: '/V, --types/--exclude-types <list>        select/exclude comma-separated list
    of variant types: snps,indels,mnps,ref,bnd,other [null]'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_x__privateexcludeprivate
  doc: /X, --private/--exclude-private           select/exclude sites where the non-reference
    alleles are exclusive (private) to the subset samples
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_in_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file name [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.11--h7c999a4_0
cwlVersion: v1.1
baseCommand:
- bcftools
- view

class: CommandLineTool
id: bcftools_view.cwl
inputs:
- id: g
  doc: ',   --drop-genotypes              drop individual genotype information (after
    subsetting if -s option set)'
  type: boolean
  inputBinding:
    prefix: -G
- id: l
  doc: ',   --compression-level [0-9]     compression level: 0 uncompressed, 1 best
    speed, 9 best compression [-1] --no-version                  do not append version
    and command line to the header'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: ',   --output-file <file>          output file name [stdout]'
  type: boolean
  inputBinding:
    prefix: -o
- id: o
  doc: ',   --output-type <b|u|z|v>       b: compressed BCF, u: uncompressed BCF,
    z: compressed VCF, v: uncompressed VCF [v]'
  type: boolean
  inputBinding:
    prefix: -O
- id: regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: targets
  doc: '[^]<region>           similar to -r but streams rather than index-jumps. Exclude
    regions with "^" prefix'
  type: boolean
  inputBinding:
    prefix: --targets
- id: targets_file
  doc: '[^]<file>        similar to -R but streams rather than index-jumps. Exclude
    regions with "^" prefix'
  type: boolean
  inputBinding:
    prefix: --targets-file
- id: threads
  doc: use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: trim_alt_alleles
  doc: trim ALT alleles not seen in the genotype fields (or their subset with -s/-S)
  type: boolean
  inputBinding:
    prefix: --trim-alt-alleles
- id: no_update
  doc: do not (re)calculate INFO fields for the subset (currently INFO/AC and INFO/AN)
  type: boolean
  inputBinding:
    prefix: --no-update
- id: samples
  doc: '[^]<list>       comma separated list of samples to include (or exclude with
    "^" prefix)'
  type: boolean
  inputBinding:
    prefix: --samples
- id: samples_file
  doc: '[^]<file>  file of samples to include (or exclude with "^" prefix)'
  type: boolean
  inputBinding:
    prefix: --samples-file
- id: force_samples
  doc: only warn about unknown subset samples
  type: boolean
  inputBinding:
    prefix: --force-samples
- id: c
  doc: /C, --min-ac/--max-ac <int>[:<type>]      minimum/maximum count for non-reference
    (nref), 1st alternate (alt1), least frequent (minor), most frequent (major) or
    sum of all but most frequent (nonmajor) alleles [nref]
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: ',   --apply-filters <list>                require at least one of the listed
    FILTER strings (e.g. "PASS,.")'
  type: boolean
  inputBinding:
    prefix: -f
- id: g
  doc: ',   --genotype [^]<hom|het|miss>          require one or more hom/het/missing
    genotype or, if prefixed with "^", exclude sites with hom/het/missing genotypes'
  type: boolean
  inputBinding:
    prefix: -g
- id: i
  doc: /e, --include/--exclude <expr>            select/exclude sites for which the
    expression is true (see man page for details)
  type: boolean
  inputBinding:
    prefix: -i
- id: k
  doc: /n, --known/--novel                       select known/novel sites only (ID
    is not/is '.')
  type: boolean
  inputBinding:
    prefix: -k
- id: m
  doc: /M, --min-alleles/--max-alleles <int>     minimum/maximum number of alleles
    listed in REF and ALT (e.g. -m2 -M2 for biallelic sites)
  type: boolean
  inputBinding:
    prefix: -m
- id: p
  doc: /P, --phased/--exclude-phased             select/exclude sites where all samples
    are phased
  type: boolean
  inputBinding:
    prefix: -p
- id: q
  doc: /Q, --min-af/--max-af <float>[:<type>]    minimum/maximum frequency for non-reference
    (nref), 1st alternate (alt1), least frequent (minor), most frequent (major) or
    sum of all but most frequent (nonmajor) alleles [nref]
  type: boolean
  inputBinding:
    prefix: -q
- id: u
  doc: /U, --uncalled/--exclude-uncalled         select/exclude sites without a called
    genotype
  type: boolean
  inputBinding:
    prefix: -u
- id: v
  doc: '/V, --types/--exclude-types <list>        select/exclude comma-separated list
    of variant types: snps,indels,mnps,ref,bnd,other [null]'
  type: boolean
  inputBinding:
    prefix: -v
- id: x
  doc: /X, --private/--exclude-private           select/exclude sites where the non-reference
    alleles are exclusive (private) to the subset samples
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- view

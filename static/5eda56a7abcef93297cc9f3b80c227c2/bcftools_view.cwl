class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bcftools_view.cwl
inputs:
- id: _dropgenotypes_drop
  doc: ',   --drop-genotypes              drop individual genotype information (after
    subsetting if -s option set)'
  type: boolean
  inputBinding:
    prefix: -G
- id: header_only_slash_no_header
  doc: print the header only/suppress the header in VCF output
  type: boolean
  inputBinding:
    prefix: --header-only/--no-header
- id: _compressionlevel_
  doc: ',   --compression-level [0-9]     compression level: 0 uncompressed, 1 best
    speed, 9 best compression [-1] --no-version                  do not append version
    and command line to the header'
  type: boolean
  inputBinding:
    prefix: -l
- id: _outputfile_file
  doc: ',   --output-file <file>          output file name [stdout]'
  type: boolean
  inputBinding:
    prefix: -o
- id: _outputtype_buzv
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
- id: min_ac_slash_max_ac
  doc: '[:<type>]      minimum/maximum count for non-reference (nref), 1st alternate
    (alt1), least frequent (minor), most frequent (major) or sum of all but most frequent
    (nonmajor) alleles [nref]'
  type: long
  inputBinding:
    prefix: --min-ac/--max-ac
- id: _applyfilters_list
  doc: ',   --apply-filters <list>                require at least one of the listed
    FILTER strings (e.g. "PASS,.")'
  type: boolean
  inputBinding:
    prefix: -f
- id: _genotype_homhetmiss
  doc: ',   --genotype [^]<hom|het|miss>          require one or more hom/het/missing
    genotype or, if prefixed with "^", exclude sites with hom/het/missing genotypes'
  type: boolean
  inputBinding:
    prefix: -g
- id: include_slash_exclude
  doc: select/exclude sites for which the expression is true (see man page for details)
  type: string
  inputBinding:
    prefix: --include/--exclude
- id: known_slash_novel
  doc: select known/novel sites only (ID is not/is '.')
  type: boolean
  inputBinding:
    prefix: --known/--novel
- id: min_alleles_slash_max_alleles
  doc: minimum/maximum number of alleles listed in REF and ALT (e.g. -m2 -M2 for biallelic
    sites)
  type: long
  inputBinding:
    prefix: --min-alleles/--max-alleles
- id: phased_slash_exclude_phased
  doc: select/exclude sites where all samples are phased
  type: boolean
  inputBinding:
    prefix: --phased/--exclude-phased
- id: min_af_slash_max_af
  doc: '[:<type>]    minimum/maximum frequency for non-reference (nref), 1st alternate
    (alt1), least frequent (minor), most frequent (major) or sum of all but most frequent
    (nonmajor) alleles [nref]'
  type: double
  inputBinding:
    prefix: --min-af/--max-af
- id: uncalled_slash_exclude_uncalled
  doc: select/exclude sites without a called genotype
  type: boolean
  inputBinding:
    prefix: --uncalled/--exclude-uncalled
- id: types_slash_exclude_types
  doc: 'select/exclude comma-separated list of variant types: snps,indels,mnps,ref,bnd,other
    [null]'
  type: string
  inputBinding:
    prefix: --types/--exclude-types
- id: private_slash_exclude_private
  doc: select/exclude sites where the non-reference alleles are exclusive (private)
    to the subset samples
  type: boolean
  inputBinding:
    prefix: --private/--exclude-private
- id: in_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- view

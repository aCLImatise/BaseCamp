version 1.0

task BcftoolsView {
  input {
    Boolean? drop_genotypes
    Boolean? compression_level
    Boolean? no_version
    File? output_file_name
    String? output_type
    String? regions
    File? regions_file
    Boolean? targets
    Boolean? targets_file
    Int? threads
    Boolean? trim_alt_alleles
    Boolean? no_update
    Boolean? samples
    Boolean? samples_file
    Boolean? force_samples
    Boolean? c__minacmaxac
    String? apply_filters
    Boolean? genotype
    Boolean? e_includeexclude_expr
    Boolean? _knownnovel_select
    Boolean? _minallelesmaxalleles_int
    Boolean? p__phasedexcludephased
    Boolean? q__minafmaxaf
    Boolean? u__uncalledexcludeuncalled
    Boolean? v__typesexcludetypes
    Boolean? x__privateexcludeprivate
    String in_dot_vcf_do_tgz
  }
  command <<<
    bcftools view \
      ~{in_dot_vcf_do_tgz} \
      ~{if (drop_genotypes) then "--drop-genotypes" else ""} \
      ~{if (compression_level) then "--compression-level" else ""} \
      ~{if (no_version) then "--no-version" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if (targets) then "--targets" else ""} \
      ~{if (targets_file) then "--targets-file" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (trim_alt_alleles) then "--trim-alt-alleles" else ""} \
      ~{if (no_update) then "--no-update" else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (samples_file) then "--samples-file" else ""} \
      ~{if (force_samples) then "--force-samples" else ""} \
      ~{if (c__minacmaxac) then "-c" else ""} \
      ~{if defined(apply_filters) then ("--apply-filters " +  '"' + apply_filters + '"') else ""} \
      ~{if (genotype) then "--genotype" else ""} \
      ~{if (e_includeexclude_expr) then "-i" else ""} \
      ~{if (_knownnovel_select) then "-k" else ""} \
      ~{if (_minallelesmaxalleles_int) then "-m" else ""} \
      ~{if (p__phasedexcludephased) then "-p" else ""} \
      ~{if (q__minafmaxaf) then "-q" else ""} \
      ~{if (u__uncalledexcludeuncalled) then "-u" else ""} \
      ~{if (v__typesexcludetypes) then "-v" else ""} \
      ~{if (x__privateexcludeprivate) then "-x" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.11--h7c999a4_0"
  }
  parameter_meta {
    drop_genotypes: "drop individual genotype information (after subsetting if -s option set)"
    compression_level: "[0-9]     compression level: 0 uncompressed, 1 best speed, 9 best compression [-1]"
    no_version: "do not append version and command line to the header"
    output_file_name: "output file name [stdout]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    regions: "restrict to comma-separated list of regions"
    regions_file: "restrict to regions listed in a file"
    targets: "[^]<region>           similar to -r but streams rather than index-jumps. Exclude regions with \\\"^\\\" prefix"
    targets_file: "[^]<file>        similar to -R but streams rather than index-jumps. Exclude regions with \\\"^\\\" prefix"
    threads: "use multithreading with <int> worker threads [0]"
    trim_alt_alleles: "trim ALT alleles not seen in the genotype fields (or their subset with -s/-S)"
    no_update: "do not (re)calculate INFO fields for the subset (currently INFO/AC and INFO/AN)"
    samples: "[^]<list>       comma separated list of samples to include (or exclude with \\\"^\\\" prefix)"
    samples_file: "[^]<file>  file of samples to include (or exclude with \\\"^\\\" prefix)"
    force_samples: "only warn about unknown subset samples"
    c__minacmaxac: "/C, --min-ac/--max-ac <int>[:<type>]      minimum/maximum count for non-reference (nref), 1st alternate (alt1), least frequent\\n(minor), most frequent (major) or sum of all but most frequent (nonmajor) alleles [nref]"
    apply_filters: "require at least one of the listed FILTER strings (e.g. \\\"PASS,.\\\")"
    genotype: "[^]<hom|het|miss>          require one or more hom/het/missing genotype or, if prefixed with \\\"^\\\", exclude sites with hom/het/missing genotypes"
    e_includeexclude_expr: "/e, --include/--exclude <expr>            select/exclude sites for which the expression is true (see man page for details)"
    _knownnovel_select: "/n, --known/--novel                       select known/novel sites only (ID is not/is '.')"
    _minallelesmaxalleles_int: "/M, --min-alleles/--max-alleles <int>     minimum/maximum number of alleles listed in REF and ALT (e.g. -m2 -M2 for biallelic sites)"
    p__phasedexcludephased: "/P, --phased/--exclude-phased             select/exclude sites where all samples are phased"
    q__minafmaxaf: "/Q, --min-af/--max-af <float>[:<type>]    minimum/maximum frequency for non-reference (nref), 1st alternate (alt1), least frequent\\n(minor), most frequent (major) or sum of all but most frequent (nonmajor) alleles [nref]"
    u__uncalledexcludeuncalled: "/U, --uncalled/--exclude-uncalled         select/exclude sites without a called genotype"
    v__typesexcludetypes: "/V, --types/--exclude-types <list>        select/exclude comma-separated list of variant types: snps,indels,mnps,ref,bnd,other [null]"
    x__privateexcludeprivate: "/X, --private/--exclude-private           select/exclude sites where the non-reference alleles are exclusive (private) to the subset samples"
    in_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}
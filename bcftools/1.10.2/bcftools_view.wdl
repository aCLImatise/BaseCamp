version 1.0

task BcftoolsView {
  input {
    Boolean? _dropgenotypes_drop
    Boolean? header_only_slash_no_header
    Boolean? __compressionlevel
    Boolean? no_version
    File? _outputfile_file
    Boolean? _outputtype_buzv
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
    Int? min_ac_slash_max_ac
    Boolean? _applyfilters_list
    Boolean? _genotype_homhetmiss
    String? include_slash_exclude
    Boolean? known_slash_novel
    Int? min_alleles_slash_max_alleles
    Boolean? phased_slash_exclude_phased
    Float? min_af_slash_max_af
    Boolean? uncalled_slash_exclude_uncalled
    String? types_slash_exclude_types
    Boolean? private_slash_exclude_private
    String in_dot_vcf_do_tgz
  }
  command <<<
    bcftools view \
      ~{in_dot_vcf_do_tgz} \
      ~{if (_dropgenotypes_drop) then "-G" else ""} \
      ~{if (header_only_slash_no_header) then "--header-only/--no-header" else ""} \
      ~{if (__compressionlevel) then "-l" else ""} \
      ~{if (no_version) then "--no-version" else ""} \
      ~{if (_outputfile_file) then "-o" else ""} \
      ~{if (_outputtype_buzv) then "-O" else ""} \
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
      ~{if defined(min_ac_slash_max_ac) then ("--min-ac/--max-ac " +  '"' + min_ac_slash_max_ac + '"') else ""} \
      ~{if (_applyfilters_list) then "-f" else ""} \
      ~{if (_genotype_homhetmiss) then "-g" else ""} \
      ~{if defined(include_slash_exclude) then ("--include/--exclude " +  '"' + include_slash_exclude + '"') else ""} \
      ~{if (known_slash_novel) then "--known/--novel" else ""} \
      ~{if defined(min_alleles_slash_max_alleles) then ("--min-alleles/--max-alleles " +  '"' + min_alleles_slash_max_alleles + '"') else ""} \
      ~{if (phased_slash_exclude_phased) then "--phased/--exclude-phased" else ""} \
      ~{if defined(min_af_slash_max_af) then ("--min-af/--max-af " +  '"' + min_af_slash_max_af + '"') else ""} \
      ~{if (uncalled_slash_exclude_uncalled) then "--uncalled/--exclude-uncalled" else ""} \
      ~{if defined(types_slash_exclude_types) then ("--types/--exclude-types " +  '"' + types_slash_exclude_types + '"') else ""} \
      ~{if (private_slash_exclude_private) then "--private/--exclude-private" else ""}
  >>>
  parameter_meta {
    _dropgenotypes_drop: ",   --drop-genotypes              drop individual genotype information (after subsetting if -s option set)"
    header_only_slash_no_header: "print the header only/suppress the header in VCF output"
    __compressionlevel: ",   --compression-level [0-9]     compression level: 0 uncompressed, 1 best speed, 9 best compression [-1]"
    no_version: "do not append version and command line to the header"
    _outputfile_file: ",   --output-file <file>          output file name [stdout]"
    _outputtype_buzv: ",   --output-type <b|u|z|v>       b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
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
    min_ac_slash_max_ac: "[:<type>]      minimum/maximum count for non-reference (nref), 1st alternate (alt1), least frequent\\n(minor), most frequent (major) or sum of all but most frequent (nonmajor) alleles [nref]"
    _applyfilters_list: ",   --apply-filters <list>                require at least one of the listed FILTER strings (e.g. \\\"PASS,.\\\")"
    _genotype_homhetmiss: ",   --genotype [^]<hom|het|miss>          require one or more hom/het/missing genotype or, if prefixed with \\\"^\\\", exclude sites with hom/het/missing genotypes"
    include_slash_exclude: "select/exclude sites for which the expression is true (see man page for details)"
    known_slash_novel: "select known/novel sites only (ID is not/is '.')"
    min_alleles_slash_max_alleles: "minimum/maximum number of alleles listed in REF and ALT (e.g. -m2 -M2 for biallelic sites)"
    phased_slash_exclude_phased: "select/exclude sites where all samples are phased"
    min_af_slash_max_af: "[:<type>]    minimum/maximum frequency for non-reference (nref), 1st alternate (alt1), least frequent\\n(minor), most frequent (major) or sum of all but most frequent (nonmajor) alleles [nref]"
    uncalled_slash_exclude_uncalled: "select/exclude sites without a called genotype"
    types_slash_exclude_types: "select/exclude comma-separated list of variant types: snps,indels,mnps,ref,bnd,other [null]"
    private_slash_exclude_private: "select/exclude sites where the non-reference alleles are exclusive (private) to the subset samples"
    in_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out__outputfile_file = "${in__outputfile_file}"
  }
}
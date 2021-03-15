version 1.0

task FaToVcf {
  input {
    Boolean? ambiguous_ton
    File? exclude_file
    Boolean? include_ref
    File? mask_sites
    String? min_ac
    Boolean? no_genotypes
    String? ref
    Boolean? resolve_ambiguous
    String? start_offset
    String? vcf_chrom
    String in_dot_fa
  }
  command <<<
    faToVcf \
      ~{in_dot_fa} \
      ~{if (ambiguous_ton) then "-ambiguousToN" else ""} \
      ~{if defined(exclude_file) then ("-excludeFile " +  '"' + exclude_file + '"') else ""} \
      ~{if (include_ref) then "-includeRef" else ""} \
      ~{if defined(mask_sites) then ("-maskSites " +  '"' + mask_sites + '"') else ""} \
      ~{if defined(min_ac) then ("-minAc " +  '"' + min_ac + '"') else ""} \
      ~{if (no_genotypes) then "-noGenotypes" else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (resolve_ambiguous) then "-resolveAmbiguous" else ""} \
      ~{if defined(start_offset) then ("-startOffset " +  '"' + start_offset + '"') else ""} \
      ~{if defined(vcf_chrom) then ("-vcfChrom " +  '"' + vcf_chrom + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ucsc-fatovcf:407--hd50662f_0"
  }
  parameter_meta {
    ambiguous_ton: "Treat all IUPAC ambiguous bases (N, R, V etc) as N (no call)."
    exclude_file: "Exclude sequences named in file which has one sequence name per line"
    include_ref: "Include the reference in the genotype columns\\n(default: omitted as redundant)"
    mask_sites: "Exclude variants in positions recommended for masking in file\\n(typically https://github.com/W-L/ProblematicSites_SARS-CoV2/raw/master/problematic_sites_sarsCov2.vcf)"
    min_ac: "Ignore alternate alleles observed fewer than N times"
    no_genotypes: "Output 8-column VCF, without the sample genotype columns"
    ref: "Use seqName as the reference sequence; must be present in faFile\\n(default: first sequence in faFile)"
    resolve_ambiguous: "For IUPAC ambiguous characters like R (A or G), if the character\\nrepresents two bases and one is the reference base, convert it to the\\nnon-reference base.  Otherwise convert it to N."
    start_offset: "Add N bases to each position (for trimmed alignments)"
    vcf_chrom: "Use seqName for the CHROM column in VCF (default: ref sequence)"
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}
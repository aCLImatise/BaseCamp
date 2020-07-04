version 1.0

task Methratio.py {
  input {
    File? out
    File? alignment_copy
    File? wig
    String? wig_bin
    File? ref
    String? chr
    File? sam_path
    Boolean? unique
    Boolean? process_only_properly
    Boolean? zero_meth
    Boolean? quiet
    Boolean? remove_duplicate
    String? trim_fill_in
    Boolean? combine_cpg
    String? min_depth
    Boolean? no_header
    String? ct_snp
    String? context
    String bs_map_mapping_files
  }
  command <<<
    methratio.py \
      ~{bs_map_mapping_files} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(alignment_copy) then ("--alignment-copy " +  '"' + alignment_copy + '"') else ""} \
      ~{if defined(wig) then ("--wig " +  '"' + wig + '"') else ""} \
      ~{if defined(wig_bin) then ("--wig-bin " +  '"' + wig_bin + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(chr) then ("--chr " +  '"' + chr + '"') else ""} \
      ~{if defined(sam_path) then ("--sam-path " +  '"' + sam_path + '"') else ""} \
      ~{true="--unique" false="" unique} \
      ~{true="--pair" false="" process_only_properly} \
      ~{true="--zero-meth" false="" zero_meth} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--remove-duplicate" false="" remove_duplicate} \
      ~{if defined(trim_fill_in) then ("--trim-fillin " +  '"' + trim_fill_in + '"') else ""} \
      ~{true="--combine-CpG" false="" combine_cpg} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{true="--no-header" false="" no_header} \
      ~{if defined(ct_snp) then ("--ct-snp " +  '"' + ct_snp + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""}
  >>>
  parameter_meta {
    out: "output methylation ratio file name. [default: STDOUT]"
    alignment_copy: "save a copy of input alignment for BSMAP pipe input. (in BAM format) [default: none]"
    wig: "output methylation ratio wiggle file. [default: none]"
    wig_bin: "wiggle file bin size. [default: 25]"
    ref: "reference genome fasta file. (required)"
    chr: "process only specified chromosomes, separated by ','. [default: all] example: --chroms=chr1,chr2"
    sam_path: "path to samtools. [default: none]"
    unique: "process only unique mappings/pairs."
    process_only_properly: "process only properly paired mappings."
    zero_meth: "report loci with zero methylation ratios. (depreciated, -z will be always enabled)"
    quiet: "don't print progress on stderr."
    remove_duplicate: "remove duplicated reads."
    trim_fill_in: "trim N end-repairing fill-in nucleotides. [default: 0]"
    combine_cpg: "combine CpG methylaion ratios on both strands."
    min_depth: "report loci with sequencing depth>=FOLD. [default: 1]"
    no_header: "don't print a header line"
    ct_snp: "how to handle CT SNP (\"no-action\", \"correct\", \"skip\"), default: \"correct\"."
    context: "methylation pattern type [CG|CHG|CHH], multiple types separated by ','. [default: all]"
    bs_map_mapping_files: ""
  }
}
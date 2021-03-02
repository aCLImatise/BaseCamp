version 1.0

task Methratiopy {
  input {
    File? out
    File? alignment_copy
    File? wig
    Int? wig_bin
    File? ref
    Int? chr
    File? sam_path
    Boolean? unique
    Boolean? process_only_properly
    Boolean? zero_meth
    Boolean? quiet
    Boolean? remove_duplicate
    Int? trim_fill_in
    Boolean? combine_cpg
    Int? min_depth
    Boolean? no_header
    String? ct_snp
    String? context
    String bs_map_mapping_files
  }
  command <<<
    methratio_py \
      ~{bs_map_mapping_files} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(alignment_copy) then ("--alignment-copy " +  '"' + alignment_copy + '"') else ""} \
      ~{if defined(wig) then ("--wig " +  '"' + wig + '"') else ""} \
      ~{if defined(wig_bin) then ("--wig-bin " +  '"' + wig_bin + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(chr) then ("--chr " +  '"' + chr + '"') else ""} \
      ~{if defined(sam_path) then ("--sam-path " +  '"' + sam_path + '"') else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if (process_only_properly) then "--pair" else ""} \
      ~{if (zero_meth) then "--zero-meth" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (remove_duplicate) then "--remove-duplicate" else ""} \
      ~{if defined(trim_fill_in) then ("--trim-fillin " +  '"' + trim_fill_in + '"') else ""} \
      ~{if (combine_cpg) then "--combine-CpG" else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if defined(ct_snp) then ("--ct-snp " +  '"' + ct_snp + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "output methylation ratio file name. [default: STDOUT]"
    alignment_copy: "save a copy of input alignment for BSMAP pipe input.\\n(in BAM format) [default: none]"
    wig: "output methylation ratio wiggle file. [default: none]"
    wig_bin: "wiggle file bin size. [default: 25]"
    ref: "reference genome fasta file. (required)"
    chr: "process only specified chromosomes, separated by ','.\\n[default: all] example: --chroms=chr1,chr2"
    sam_path: "path to samtools. [default: none]"
    unique: "process only unique mappings/pairs."
    process_only_properly: "process only properly paired mappings."
    zero_meth: "report loci with zero methylation ratios.\\n(depreciated, -z will be always enabled)"
    quiet: "don't print progress on stderr."
    remove_duplicate: "remove duplicated reads."
    trim_fill_in: "trim N end-repairing fill-in nucleotides. [default: 0]"
    combine_cpg: "combine CpG methylaion ratios on both strands."
    min_depth: "report loci with sequencing depth>=FOLD. [default: 1]"
    no_header: "don't print a header line"
    ct_snp: "how to handle CT SNP (\\\"no-action\\\", \\\"correct\\\", \\\"skip\\\"),\\ndefault: \\\"correct\\\"."
    context: "methylation pattern type [CG|CHG|CHH], multiple types\\nseparated by ','. [default: all]\\n"
    bs_map_mapping_files: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_wig = "${in_wig}"
  }
}
version 1.0

task Methdiff.py {
  input {
    File? out
    File? ref
    String? bin
    String? pval
    String? diff
    String? context
    String? labels
    String? min_depth
    String? strand
    Boolean? quiet
  }
  command <<<
    methdiff.py \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(bin) then ("--bin " +  '"' + bin + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if defined(diff) then ("--diff " +  '"' + diff + '"') else ""} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    out: "output differential methylation file name. (required)"
    ref: "reference genome fasta file. (required)"
    bin: "bin size. [default: 100]"
    pval: "p-value cut-off. [default: 0.01]"
    diff: "minimal abs meth ratio difference. [default: 0.33]"
    context: "methylation pattern type [CG|CHG|CHH], multiple types separated by ','. [default: all]"
    labels: "output label for each group, separated by ','. [default: filenames]"
    min_depth: "minimal average coverage. [default: 1]"
    strand: "which strand to process, [both|forward|reverse]. [default: both]"
    quiet: "don't print progress on stderr."
  }
}
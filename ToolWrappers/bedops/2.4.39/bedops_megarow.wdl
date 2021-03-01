version 1.0

task Bedopsmegarow {
  input {
    String? chrom
    Boolean? ec
    Boolean? header
    Boolean? help
    Boolean? complement
    File? difference
    Boolean? element_of
    File? intersect
    File? merge
    Boolean? not_element_of
    File? partition
    File? symm_diff
    File? everything
    Boolean? chop
    String bed_ops
    String? process_flags
    String operation
  }
  command <<<
    bedops_megarow \
      ~{bed_ops} \
      ~{process_flags} \
      ~{operation} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if (ec) then "--ec" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (help) then "--help-" else ""} \
      ~{if (complement) then "--complement" else ""} \
      ~{if defined(difference) then ("--difference " +  '"' + difference + '"') else ""} \
      ~{if (element_of) then "--element-of" else ""} \
      ~{if defined(intersect) then ("--intersect " +  '"' + intersect + '"') else ""} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{if (not_element_of) then "--not-element-of" else ""} \
      ~{if defined(partition) then ("--partition " +  '"' + partition + '"') else ""} \
      ~{if defined(symm_diff) then ("--symmdiff " +  '"' + symm_diff + '"') else ""} \
      ~{if defined(everything) then ("--everything " +  '"' + everything + '"') else ""} \
      ~{if (chop) then "--chop" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chrom: "Jump to and process data for given <chromosome> only."
    ec: "Error check input files (slower)."
    header: "Accept headers (VCF, GFF, SAM, BED, WIG) in any input file."
    help: "<operation>   Detailed help on <operation>.\\nAn example is --help-c or --help-complement"
    complement: "[-L] File1 [File]*"
    difference: "File2 [File]*"
    element_of: "[bp | percentage] ReferenceFile File2 [File]*\\nby default, -e 100% is used.  'bedops -e 1' is also popular."
    intersect: "File2 [File]*"
    merge: "[File]*"
    not_element_of: "[bp | percentage] ReferenceFile File2 [File]*\\nby default, -n 100% is used.  'bedops -n 1' is also popular."
    partition: "[File]*"
    symm_diff: "File2 [File]*"
    everything: "[File]*"
    chop: "[bp] [--stagger <nt>] [-x] File1 [File]*\\nby default, -w 1 is used with no staggering."
    bed_ops: ""
    process_flags: ""
    operation: ""
  }
  output {
    File out_stdout = stdout()
  }
}
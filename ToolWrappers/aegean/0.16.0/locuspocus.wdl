version 1.0

task Locuspocus {
  input {
    Boolean? debug
    Boolean? delta
    Boolean? skip_ends
    Boolean? ends_only
    Boolean? skip_ii_loci
    Boolean? refine
    Boolean? cds
    Boolean? min_overlap
    Boolean? name_fmt
    Boolean? i_lens
    File? outfile
    Boolean? retain_ids
    Boolean? transmap
    Boolean? verbose
    Boolean? filter
    Boolean? parent
    Boolean? pseudo
    String i_locus
  }
  command <<<
    locuspocus \
      ~{i_locus} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (delta) then "--delta" else ""} \
      ~{if (skip_ends) then "--skipends" else ""} \
      ~{if (ends_only) then "--endsonly" else ""} \
      ~{if (skip_ii_loci) then "--skipiiloci" else ""} \
      ~{if (refine) then "--refine" else ""} \
      ~{if (cds) then "--cds" else ""} \
      ~{if (min_overlap) then "--minoverlap" else ""} \
      ~{if (name_fmt) then "--namefmt" else ""} \
      ~{if (i_lens) then "--ilens" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (retain_ids) then "--retainids" else ""} \
      ~{if (transmap) then "--transmap" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (parent) then "--parent" else ""} \
      ~{if (pseudo) then "--pseudo" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/aegean:0.16.0--hc2cb157_0"
  }
  parameter_meta {
    debug: "print detailed debugging messages to terminal\\n(standard error)"
    delta: ": INT        when parsing interval loci, use the following\\ndelta to extend gene loci and include potential\\nregulatory regions; default is 500"
    skip_ends: "when enumerating interval loci, exclude\\nunannotated (and presumably incomplete) iLoci at\\neither end of the sequence"
    ends_only: "report only incomplete iLocus fragments at the\\nunannotated ends of sequences (complement of\\n--skipends)"
    skip_ii_loci: "do not report intergenic iLoci"
    refine: "by default genes are grouped in the same iLocus\\nif they have any overlap; 'refine' mode allows\\nfor a more nuanced handling of overlapping genes"
    cds: "use CDS rather than UTRs for determining gene\\noverlap; implies 'refine' mode"
    min_overlap: ": INT   the minimum number of nucleotides two genes must\\noverlap to be grouped in the same iLocus; default\\nis 1"
    name_fmt: ": STR     provide a printf-style format string to override\\nthe default ID format for newly created loci;\\ndefault is 'locus%lu' (locus1, locus2, etc) for\\nloci and 'iLocus%lu' (iLocus1, iLocus2, etc) for\\ninterval loci; note the format string should\\ninclude a single %lu specifier to be filled in\\nwith a long unsigned integer value"
    i_lens: ": FILE       create a file with the lengths of each intergenic"
    outfile: ": FILE     name of file to which results will be written;\\ndefault is terminal (standard output)"
    retain_ids: "retain original feature IDs from input files;\\nconflicts will arise if input contains duplicated\\nID values"
    transmap: ": FILE    print a mapping from each transcript annotation\\nto its corresponding locus to the given file"
    verbose: "include all locus subfeatures (genes, RNAs, etc)\\nin the GFF3 output; default includes only locus\\nfeatures"
    filter: ": TYPE      comma-separated list of feature types to use in\\nconstructing loci/iLoci; default is 'gene'"
    parent: ": CT:PT     if a feature of type $CT exists without a parent,\\ncreate a parent for this feature with type $PT;\\nfor example, mRNA:gene will create a gene feature\\nas a parent for any top-level mRNA feature;\\nthis option can be specified multiple times"
    pseudo: "correct erroneously labeled pseudogenes"
    i_locus: "-g|--genemap: FILE     print a mapping from each gene annotation to its"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}
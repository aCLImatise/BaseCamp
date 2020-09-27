version 1.0

task CoolerLoad {
  input {
    Boolean? format
    File? metadata
    Int? assembly
    Float? field
    Int? chunksize
    Boolean? count_as_float
    Boolean? one_based
    String? comment_char
    Boolean? no_symmetric_upper
    Boolean? input_copy_status
    Int? storage_options
    String compressed_dot
    String ignore_dot
  }
  command <<<
    cooler load \
      ~{compressed_dot} \
      ~{ignore_dot} \
      ~{if (format) then "--format" else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if (count_as_float) then "--count-as-float" else ""} \
      ~{if (one_based) then "--one-based" else ""} \
      ~{if defined(comment_char) then ("--comment-char " +  '"' + comment_char + '"') else ""} \
      ~{if (no_symmetric_upper) then "--no-symmetric-upper" else ""} \
      ~{if (input_copy_status) then "--input-copy-status" else ""} \
      ~{if defined(storage_options) then ("--storage-options " +  '"' + storage_options + '"') else ""}
  >>>
  parameter_meta {
    format: "[coo|bg2]          'coo' refers to a tab-delimited sparse\\ntriplet file (bin1, bin2, count). 'bg2'\\nrefers to a 2D bedGraph-like file (chrom1,\\nstart1, end1, chrom2, start2, end2, count).\\n[required]"
    metadata: "Path to JSON file containing user metadata."
    assembly: "Name of genome assembly (e.g. hg19, mm10)"
    field: "Add supplemental value fields or override\\ndefault field numbers for the specified\\nformat. Specify quantitative input fields to\\naggregate into value columns using the\\nsyntax ``--field <field-name>=<field-\\nnumber>``. Optionally, append ``:`` followed\\nby ``dtype=<dtype>`` to specify the data\\ntype (e.g. float). Field numbers are\\n1-based. Repeat the ``--field`` option for\\neach additional field."
    chunksize: "Size (in number of lines/records) of data\\nchunks to read and process from the input\\nfile at a time. These chunks will be saved\\nas temporary partial Coolers and merged at\\nthe end. Also specifies the size of the\\nbuffer during the merge step."
    count_as_float: "Store the 'count' column as floating point\\nvalues instead of as integers. Can also be\\nspecified using the `--field` option."
    one_based: "Pass this flag if the bin IDs listed in a\\nCOO file are one-based instead of zero-\\nbased."
    comment_char: "Comment character that indicates lines to"
    no_symmetric_upper: "Create a complete square matrix without\\nimplicit symmetry. This allows for distinct\\nupper- and lower-triangle values"
    input_copy_status: "[unique|duplex]\\nCopy status of input data when using\\nsymmetric-upper storage. | `unique`:\\nIncoming data comes from a unique half of a\\nsymmetric matrix, regardless of how element\\ncoordinates are ordered. Execution will be\\naborted if duplicates are detected.\\n`duplex`: Incoming data contains upper- and\\nlower-triangle duplicates. All lower-\\ntriangle input elements will be discarded! |\\nIf you wish to treat lower- and upper-\\ntriangle input data as distinct, use the\\n``--no-symmetric-upper`` option instead.\\n[default: unique]"
    storage_options: "Options to modify the data filter pipeline.\\nProvide as a comma-separated list of key-\\nvalue pairs of the form 'k1=v1,k2=v2,...'.\\nSee http://docs.h5py.org/en/stable/high/data\\nset.html#filter-pipeline for more details."
    compressed_dot: "COO: COO-rdinate sparse matrix format (a.k.a. ijv triple). 3 columns:"
    ignore_dot: "[default: #]"
  }
  output {
    File out_stdout = stdout()
  }
}
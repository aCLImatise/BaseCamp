version 1.0

task CoolerCloadPairs {
  input {
    File? metadata
    Int? assembly
    Int? chrom_one
    Int? pos_one
    Int? chrom_two
    Int? pos_two
    Int? chunksize
    Boolean? zero_based
    String? comment_char
    Boolean? no_symmetric_upper
    Boolean? input_copy_status
    Float? field
    Directory? temp_dir
    Boolean? no_delete_temp
    Int? max_merge
    Int? storage_options
    String ignore_dot
  }
  command <<<
    cooler cload pairs \
      ~{ignore_dot} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(chrom_one) then ("--chrom1 " +  '"' + chrom_one + '"') else ""} \
      ~{if defined(pos_one) then ("--pos1 " +  '"' + pos_one + '"') else ""} \
      ~{if defined(chrom_two) then ("--chrom2 " +  '"' + chrom_two + '"') else ""} \
      ~{if defined(pos_two) then ("--pos2 " +  '"' + pos_two + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if (zero_based) then "--zero-based" else ""} \
      ~{if defined(comment_char) then ("--comment-char " +  '"' + comment_char + '"') else ""} \
      ~{if (no_symmetric_upper) then "--no-symmetric-upper" else ""} \
      ~{if (input_copy_status) then "--input-copy-status" else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if defined(temp_dir) then ("--temp-dir " +  '"' + temp_dir + '"') else ""} \
      ~{if (no_delete_temp) then "--no-delete-temp" else ""} \
      ~{if defined(max_merge) then ("--max-merge " +  '"' + max_merge + '"') else ""} \
      ~{if defined(storage_options) then ("--storage-options " +  '"' + storage_options + '"') else ""}
  >>>
  parameter_meta {
    metadata: "Path to JSON file containing user metadata."
    assembly: "Name of genome assembly (e.g. hg19, mm10)"
    chrom_one: "chrom1 field number (one-based)  [required]"
    pos_one: "pos1 field number (one-based)  [required]"
    chrom_two: "chrom2 field number (one-based)  [required]"
    pos_two: "pos2 field number (one-based)  [required]"
    chunksize: "Number of input lines to load at a time"
    zero_based: "Positions are zero-based  [default: False]"
    comment_char: "Comment character that indicates lines to"
    no_symmetric_upper: "Create a complete square matrix without\\nimplicit symmetry. This allows for distinct\\nupper- and lower-triangle values"
    input_copy_status: "[unique|duplex]\\nCopy status of input data when using\\nsymmetric-upper storage. | `unique`:\\nIncoming data comes from a unique half of a\\nsymmetric map, regardless of how the\\ncoordinates of a pair are ordered. `duplex`:\\nIncoming data contains upper- and lower-\\ntriangle duplicates. All input records that\\nmap to the lower triangle will be discarded!\\n| If you wish to treat lower- and upper-\\ntriangle input data as distinct, use the\\n``--no-symmetric-upper`` option.   [default:\\nunique]"
    field: "Specify quantitative input fields to\\naggregate into value columns using the\\nsyntax ``--field <field-name>=<field-\\nnumber>``. Optionally, append ``:`` followed\\nby ``dtype=<dtype>`` to specify the data\\ntype (e.g. float), and/or ``agg=<agg>`` to\\nspecify an aggregation function different\\nfrom sum (e.g. mean). Field numbers are\\n1-based. Passing 'count' as the target name\\nwill override the default behavior of\\nstoring pair counts. Repeat the ``--field``\\noption for each additional field."
    temp_dir: "Create temporary files in a specified\\ndirectory. Pass ``-`` to use the platform\\ndefault temp dir."
    no_delete_temp: "Do not delete temporary files when finished."
    max_merge: "Maximum number of chunks to merge before\\ninvoking recursive merging  [default: 200]"
    storage_options: "Options to modify the data filter pipeline.\\nProvide as a comma-separated list of key-\\nvalue pairs of the form 'k1=v1,k2=v2,...'.\\nSee http://docs.h5py.org/en/stable/high/data\\nset.html#filter-pipeline for more details."
    ignore_dot: "[default: #]"
  }
  output {
    File out_stdout = stdout()
  }
}
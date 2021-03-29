version 1.0

task Tabix {
  input {
    Boolean? zero_based
    Int? begin
    String? comment
    Boolean? csi
    Int? end
    Boolean? force
    Int? min_shift
    String? preset
    Int? sequence
    Int? skip_lines
    Boolean? only_header
    Boolean? list_chrom_s
    File? re_header
    File? regions
    File? targets
    Boolean? download_index_file
    Int? cache
    Boolean? separate_regions
    Int? verbosity
    File? var_file
  }
  command <<<
    tabix \
      ~{var_file} \
      ~{if (zero_based) then "--zero-based" else ""} \
      ~{if defined(begin) then ("--begin " +  '"' + begin + '"') else ""} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""} \
      ~{if (csi) then "--csi" else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(min_shift) then ("--min-shift " +  '"' + min_shift + '"') else ""} \
      ~{if defined(preset) then ("--preset " +  '"' + preset + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(skip_lines) then ("--skip-lines " +  '"' + skip_lines + '"') else ""} \
      ~{if (only_header) then "--only-header" else ""} \
      ~{if (list_chrom_s) then "--list-chroms" else ""} \
      ~{if defined(re_header) then ("--reheader " +  '"' + re_header + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if (download_index_file) then "-D" else ""} \
      ~{if defined(cache) then ("--cache " +  '"' + cache + '"') else ""} \
      ~{if (separate_regions) then "--separate-regions" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/htslib:1.12--hd3b49d5_0"
  }
  parameter_meta {
    zero_based: "coordinates are zero-based"
    begin: "column number for region start [4]"
    comment: "skip comment lines starting with CHAR [null]"
    csi: "generate CSI index for VCF (default is TBI)"
    end: "column number for region end (if no end, set INT to -b) [5]"
    force: "overwrite existing index without asking"
    min_shift: "set minimal interval size for CSI indices to 2^INT [14]"
    preset: "gff, bed, sam, vcf"
    sequence: "column number for sequence names (suppressed by -p) [1]"
    skip_lines: "skip first INT lines [0]"
    only_header: "print only the header lines"
    list_chrom_s: "list chromosome names"
    re_header: "replace the header with the content of FILE"
    regions: "restrict to regions listed in the file"
    targets: "similar to -R but streams rather than index-jumps"
    download_index_file: "do not download the index file"
    cache: "set cache size to INT megabytes (0 disables) [10]"
    separate_regions: "separate the output by corresponding regions"
    verbosity: "set verbosity [3]"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
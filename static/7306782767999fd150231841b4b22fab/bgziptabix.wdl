version 1.0

task Bgziptabix {
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
    String tab_ix
    File? var_file
  }
  command <<<
    bgziptabix \
      ~{tab_ix} \
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
      ~{if (download_index_file) then "-D" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
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
    tab_ix: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}
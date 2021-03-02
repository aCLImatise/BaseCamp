version 1.0

task Utrrnaseq {
  input {
    String? long
    Boolean? in_scaffold_file
    Boolean? in_coding_region_file
    Boolean? in_intron_file
    Boolean? in_wiggle_file
    Boolean? in_repeat_file
    File? out_file_name
    Boolean? smoothing_window_size
    Boolean? read_length
    Boolean? limit
    Boolean? drop_window_size
    Boolean? minimum_length
    Boolean? minimum_average_coverage
    Boolean? percent_window
    Boolean? percent_intron
    Boolean? percent_multiplicity
    Boolean? splices_sites
    Boolean? zero_coverage
    Boolean? format_examples
  }
  command <<<
    utrrnaseq \
      ~{if defined(long) then ("--long " +  '"' + long + '"') else ""} \
      ~{if (in_scaffold_file) then "--in-scaffold-file" else ""} \
      ~{if (in_coding_region_file) then "--in-coding-region-file" else ""} \
      ~{if (in_intron_file) then "--in-intron-file" else ""} \
      ~{if (in_wiggle_file) then "--in-wiggle-file" else ""} \
      ~{if (in_repeat_file) then "--in-repeat-file" else ""} \
      ~{if (out_file_name) then "--out-file-name" else ""} \
      ~{if (smoothing_window_size) then "--smoothing-window-size" else ""} \
      ~{if (read_length) then "--read-length" else ""} \
      ~{if (limit) then "--limit" else ""} \
      ~{if (drop_window_size) then "--drop-window-size" else ""} \
      ~{if (minimum_length) then "--minimum-length" else ""} \
      ~{if (minimum_average_coverage) then "--minimum-average-coverage" else ""} \
      ~{if (percent_window) then "--percent-window" else ""} \
      ~{if (percent_intron) then "--percent-intron" else ""} \
      ~{if (percent_multiplicity) then "--percent-multiplicity" else ""} \
      ~{if (splices_sites) then "--splices-sites" else ""} \
      ~{if (zero_coverage) then "--zero-coverage" else ""} \
      ~{if (format_examples) then "--format-examples" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    long: "data type       description"
    in_scaffold_file: "s               scaffold file in FASTA-format. Required."
    in_coding_region_file: "s               file with start and stop features in GTF/GFF format. Required."
    in_intron_file: "s               intron file in GTF/GFF format. Required."
    in_wiggle_file: "s               wiggle file in WIG-format. Required."
    in_repeat_file: "s               repeat file in GTF/GFF format."
    out_file_name: "s               output filename. Optional. Default Value: 'UTRs.gff'"
    smoothing_window_size: "i               smoothing window size. Optional. Default Value: 150"
    read_length: "i               read length of RNA-Seq data. Optional. Default Value: 150"
    limit: "i               maximal distance from computation start. Optional. Default Value: 5000"
    drop_window_size: "i               window size after UTR end. Optional. Default Value: 50"
    minimum_length: "i               minimal UTR length. Optional. Default Value: 2"
    minimum_average_coverage: "i               minimal average UTR coverage. Optional. Default Value: 10"
    percent_window: "d               percentage of window coverage after UTR. Optional. Default Value: 0.6"
    percent_intron: "d               percentage of coverage in introns. Optional. Default Value: 0.5"
    percent_multiplicity: "d               percentage of multiplicity of introns. Optional. Default Value: 0.1"
    splices_sites: "s               accepted splice sites. If 'all' is chosen, no splice site filtering is done.Optional. Default Value: GT_AG"
    zero_coverage: "none            Determination of UTRs based on zero coverage. Optional. Default Value: false"
    format_examples: "none            Only print format examples of input files. Optional. Default Value: false"
  }
  output {
    File out_stdout = stdout()
    File out_out_file_name = "${in_out_file_name}"
  }
}
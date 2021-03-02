version 1.0

task Vulcan {
  input {
    Directory? work_dir
    Int? threads
    Array[String] percentile
    Boolean? full
    Boolean? dry
    Boolean? raw_edit_distance
    Boolean? pac_bio_clr
    Boolean? pac_bio_hifi
    Boolean? nano_pore
    Boolean? any_long_read
    Boolean? human_clr
    Boolean? human_hifi
    Boolean? human_nano_pore
    Boolean? custom_cmd
    Array[String] input_read_path
    File? reference
    String? vulcans_prefix_be
  }
  command <<<
    vulcan \
      ~{if defined(work_dir) then ("--work_dir " +  '"' + work_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(percentile) then ("--percentile " +  '"' + percentile + '"') else ""} \
      ~{if (full) then "--full" else ""} \
      ~{if (dry) then "--dry" else ""} \
      ~{if (raw_edit_distance) then "--raw_edit_distance" else ""} \
      ~{if (pac_bio_clr) then "--pacbio_clr" else ""} \
      ~{if (pac_bio_hifi) then "--pacbio_hifi" else ""} \
      ~{if (nano_pore) then "--nanopore" else ""} \
      ~{if (any_long_read) then "--anylongread" else ""} \
      ~{if (human_clr) then "--humanclr" else ""} \
      ~{if (human_hifi) then "--humanhifi" else ""} \
      ~{if (human_nano_pore) then "--humannanopore" else ""} \
      ~{if (custom_cmd) then "--custom_cmd" else ""} \
      ~{if defined(input_read_path) then ("--input " +  '"' + input_read_path + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(vulcans_prefix_be) then ("--output " +  '"' + vulcans_prefix_be + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vulcan:1.0.2--0"
  }
  parameter_meta {
    work_dir: "Directory of work, store temp files, default: ./vulcan_work"
    threads: "threads, default: 1"
    percentile: "percentile of cut-off, default: 90"
    full: "keep all temp file"
    dry: "only generate config"
    raw_edit_distance: "Use raw edit distance to do the cut-off"
    pac_bio_clr: "Input reads is pacbio CLR reads"
    pac_bio_hifi: "Input reads is pacbio hifi reads"
    nano_pore: "Input reads is Nanopore reads"
    any_long_read: "Don't know which kind of long read"
    human_clr: "Human pacbio CLR read"
    human_hifi: "Human pacbio hifi reads"
    human_nano_pore: "Human Nanopore reads"
    custom_cmd: "Use minimap2 and NGMLR with user's own parameter setting"
    input_read_path: "input read path, can accept multiple files"
    reference: "reference path"
    vulcans_prefix_be: "vulcan's output's prefix, the output will be prefix_{percentile}.bam\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
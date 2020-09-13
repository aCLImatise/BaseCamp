version 1.0

task PurgeHaplotigsClip {
  input {
    Boolean? primary_primary_contigs
    File? outprefix_output_file
    Boolean? length_minimum_overlap
    Boolean? gap_maximum_end
    Boolean? ratio_max_allowable
    Boolean? threads_threds_use
    String? h
  }
  command <<<
    purge_haplotigs clip \
      ~{if (primary_primary_contigs) then "-p" else ""} \
      ~{if (outprefix_output_file) then "-o" else ""} \
      ~{if (length_minimum_overlap) then "-l" else ""} \
      ~{if (gap_maximum_end) then "-g" else ""} \
      ~{if (ratio_max_allowable) then "-r" else ""} \
      ~{if (threads_threds_use) then "-t" else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    primary_primary_contigs: "/ -primary       Primary contigs (curated.fasta by default) from the 'purge' stage."
    outprefix_output_file: "/ -outPrefix     Output file prefix. DEFAULT = clip"
    length_minimum_overlap: "/ -length        Minimum overlap length to trigger clipping. DEFAULT = 10000"
    gap_maximum_end: "/ -gap           Maximum end gap to allow clipping. DEFAULT = 10000"
    ratio_max_allowable: "/ -ratio         Max allowable gap to alignment ratio. DEFAULT = 0.5"
    threads_threds_use: "/ -threads       Threds to use. DEFAULT = 4"
    h: ""
  }
  output {
    File out_stdout = stdout()
    File out_outprefix_output_file = "${in_outprefix_output_file}"
  }
}
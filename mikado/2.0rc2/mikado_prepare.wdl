version 1.0

task MikadoPrepare {
  input {
    String? start_method
    Boolean? strand_specific
    String? strand_specific_assemblies
    String? list
    String? log
    Boolean? lenient
    Int? minimum_cdna_length
    Int? max_intron_size
    String? procs
    Boolean? strip_cds
    String? labels
    Boolean? single_thread
    String? output_dir
    String? out
    String? out_fast_a
    String? json_conf
    Boolean? keep_redundant
    String? seed
    String? fast_a
    String gff
  }
  command <<<
    mikado prepare \
      ~{gff} \
      ~{if defined(start_method) then ("--start-method " +  '"' + start_method + '"') else ""} \
      ~{true="--strand-specific" false="" strand_specific} \
      ~{if defined(strand_specific_assemblies) then ("--strand-specific-assemblies " +  '"' + strand_specific_assemblies + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--lenient" false="" lenient} \
      ~{if defined(minimum_cdna_length) then ("--minimum-cdna-length " +  '"' + minimum_cdna_length + '"') else ""} \
      ~{if defined(max_intron_size) then ("--max-intron-size " +  '"' + max_intron_size + '"') else ""} \
      ~{if defined(procs) then ("--procs " +  '"' + procs + '"') else ""} \
      ~{true="--strip_cds" false="" strip_cds} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{true="--single-thread" false="" single_thread} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_fast_a) then ("--out_fasta " +  '"' + out_fast_a + '"') else ""} \
      ~{if defined(json_conf) then ("--json-conf " +  '"' + json_conf + '"') else ""} \
      ~{true="--keep-redundant" false="" keep_redundant} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  parameter_meta {
    start_method: "Multiprocessing start method."
    strand_specific: "Flag. If set, monoexonic transcripts will be left on their strand rather than being moved to the unknown strand."
    strand_specific_assemblies: "Comma-delimited list of strand specific assemblies."
    list: "Tab-delimited file containing rows with the following format: <file> <label> <strandedness> <score(optional)> <is_reference(optional)> <always_keep(optional) strandedness, is_reference and always_keep must be boolean values (True, False) score must be a valid floating number."
    log: "Log file. Optional."
    lenient: "Flag. If set, transcripts with only non-canonical splices will be output as well."
    minimum_cdna_length: "Minimum length for transcripts. Default: 200 bps."
    max_intron_size: "Maximum intron length for transcripts. Default: 1,000,000 bps."
    procs: "Number of processors to use (default None)"
    strip_cds: "Boolean flag. If set, ignores any CDS/UTR segment."
    labels: "Labels to attach to the IDs of the transcripts of the input files, separated by comma."
    single_thread: "Disable multi-threading. Useful for debugging."
    output_dir: "Output directory. Default: current working directory"
    out: "Output file. Default: mikado_prepared.gtf."
    out_fast_a: "Output file. Default: mikado_prepared.fasta."
    json_conf: "Configuration file."
    keep_redundant: "Boolean flag. If invoked, Mikado prepare will retain redundant models."
    seed: "Random seed number."
    fast_a: ""
    gff: "Input GFF/GTF file(s)."
  }
}
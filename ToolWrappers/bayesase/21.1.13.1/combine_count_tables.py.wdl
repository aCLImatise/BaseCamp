version 1.0

task CombineCountTablespy {
  input {
    File? design
    Boolean? sim
    File? bed
    String? collection_identifiers
    String? collection_filenames
    File? begin
    File? end
    File? out_design
    Directory? outdir
  }
  command <<<
    combine_count_tables_py \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if (sim) then "--sim" else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(collection_identifiers) then ("--collection_identifiers " +  '"' + collection_identifiers + '"') else ""} \
      ~{if defined(collection_filenames) then ("--collection_filenames " +  '"' + collection_filenames + '"') else ""} \
      ~{if defined(begin) then ("--begin " +  '"' + begin + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(out_design) then ("--outdesign " +  '"' + out_design + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    design: "Alignment Design File containing fastq fqNames and\\nsampleIDs [Required]"
    sim: "Select if this is a simulation dataset"
    bed: "Full path to the bed file [Required]"
    collection_identifiers: "Input original names [Required]"
    collection_filenames: "Input galaxy names [Required]"
    begin: "Start point in design file [Optional]"
    end: "End point in design file [Optional]"
    out_design: "Output design file name with full path in galaxy\\n[Required]"
    outdir: "Output directory for summed count table files\\n[Required]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_design = "${in_out_design}"
    Directory out_outdir = "${in_outdir}"
  }
}
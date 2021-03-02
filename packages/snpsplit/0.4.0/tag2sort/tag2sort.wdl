version 1.0

task Tag2sort {
  input {
    Boolean? paired
    File? outdir
    File? singletons
    Boolean? hic
    Boolean? sam_tools_path
    Boolean? conflicting
  }
  command <<<
    tag2sort \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (singletons) then "--singletons" else ""} \
      ~{if (hic) then "--hic" else ""} \
      ~{if (sam_tools_path) then "--samtools_path" else ""} \
      ~{if (conflicting) then "--conflicting" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/snpsplit:0.4.0--0"
  }
  parameter_meta {
    paired: "Paired-end mode. (Default: OFF)."
    outdir: "Write all output files into this directory. By default the output files will be written into\\nthe same folder as the input file(s)."
    singletons: "If the allele-tagged paired-end file also contains singleton alignments (which is the\\ndefault for e.g. TopHat), these will be written out to extra files (ending in _st.bam)\\ninstead of writing everything to combined paired-end and singleton files. Default: OFF."
    hic: "Assumes Hi-C data processed with HiCUP (www.bioinformatics.babraham.ac.uk/projects/hicup/)\\nas input, i.e. the input BAM file is paired-end and Reads 1 and 2 follow each other. Thus,\\nthis option also sets the flags --paired and --no_sort. Default: OFF."
    sam_tools_path: "The path to your Samtools installation, e.g. /home/user/samtools/. Does not need to\\nbe specified explicitly if Samtools is in the PATH already."
    conflicting: "Reads or read pairs that were classified as 'Conflicting' (XX:Z:CF) will be written to\\nan extra file (ending in .conflicting.bam) instead of being simply skipped. Reads may be\\nclassified as 'Conflicting' if a single read contains SNP information for both genomes at\\nthe same time, or if the SNP position was deleted from the read. Read-pairs are considered\\n'Conflicting' if either read is was tagged with the XX:Z:CF flag. Default: OFF."
  }
  output {
    File out_stdout = stdout()
    File out_singletons = "${in_singletons}"
  }
}
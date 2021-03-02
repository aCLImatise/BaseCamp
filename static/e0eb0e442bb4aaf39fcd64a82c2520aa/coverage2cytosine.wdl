version 1.0

task Coverage2cytosine {
  input {
    File? name_output_mandatory
    Directory? dir
    File? genome_folder
    File? cx_context
    Boolean? merge_cpg
    Int? discordance
    File? gc_context
    Boolean? nome_seq
    Int? coverage_threshold
    Boolean? ff
    Boolean? zero_based
    Boolean? split_by_chromosome
    File? gzip
    String? var_input
  }
  command <<<
    coverage2cytosine \
      ~{var_input} \
      ~{if defined(name_output_mandatory) then ("--output " +  '"' + name_output_mandatory + '"') else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if defined(genome_folder) then ("--genome_folder " +  '"' + genome_folder + '"') else ""} \
      ~{if (cx_context) then "--CX_context" else ""} \
      ~{if (merge_cpg) then "--merge_CpG" else ""} \
      ~{if defined(discordance) then ("--discordance " +  '"' + discordance + '"') else ""} \
      ~{if (gc_context) then "--gc_context" else ""} \
      ~{if (nome_seq) then "--nome-seq" else ""} \
      ~{if defined(coverage_threshold) then ("--coverage_threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if (ff) then "--ff" else ""} \
      ~{if (zero_based) then "--zero_based" else ""} \
      ~{if (split_by_chromosome) then "--split_by_chromosome" else ""} \
      ~{if (gzip) then "--gzip" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_output_mandatory: "Name of the output file, mandatory."
    dir: "Output directory. Output is written to the current directory if not specified explicitly."
    genome_folder: "Enter the genome folder you wish to use to extract sequences from (relative or full path). Accepted\\nformats are FastA files ending with '.fa' or '.fasta'. Specifying a genome folder path is mandatory."
    cx_context: "The output file contains information on every single cytosine in the genome irrespective of\\nits context. This applies to both forward and reverse strands. Please be aware that this will\\ngenerate output files with > 1.1 billion lines for a mammalian genome such as human or mouse.\\nDefault: OFF (i.e. Default = CpG context only)."
    merge_cpg: "Using this option will post-process the genome-wide report to write out an additional coverage\\nfile (see above for the coverage file format) which has the top and bottom strand methylation\\nevidence pooled into a single CpG dinucleotide entity. This may be the desirable input format\\nfor some downstream processing tools such as the R-package bsseq (by K.D. Hansen). An example would be:\\ngenome-wide CpG report (old)\\ngi|9626372|ref|NC_001422.1|     157     +       313     156     CG\\ngi|9626372|ref|NC_001422.1|     158     -       335     156     CG\\nmerged CpG evidence coverage file (new)\\ngi|9626372|ref|NC_001422.1|     157     158     67.500000       648     312\\nThis option is currently experimental, and only works if CpG context only and a single genome-wide report\\nwere specified (i.e. it doesn't work with the options --CX or --split_by_chromosome).\\nIf --zero_based was specified as well the output coverage file is in zero-based half-open format like\\nbedGraph files."
    discordance: "When in '--merge_CpG' mode, apply a filter for the maximum allowed discordance between top and bottom\\nstrand methylation values expressed as the absolute difference in percent methylation. Discordant CpGs\\nare written to a file called 'discordant_CpG_evidence.cov' (not merged). As example consider:\\ntop:     gi|170079663|ref|NC_010473.1|   573     +       5       6       CG      CGC\\nbottom:  gi|170079663|ref|NC_010473.1|   574     -       13      4       CG      CGG\\nwith '--discordance 20'\\nThe methylation % difference here is 31%, so the read would go into the discordant.cov file. CpG positions\\nfor which either the top or bottom strand was not measured at all will not be assessed for discordance, and\\nhence appear in the regular 'merged_CpG_evidence.cov' file."
    gc_context: "In addition to normal processing this option will reprocess the genome to find methylation in\\nGpC context. This might be useful for specialist applications where GpC methylases had been\\ndeployed. The output format is exactly the same as for the normal cytosine report, and only\\npositions covered by at least one read are reported (output file ends in .GpC_report.txt). In addition\\nthis will write out a Bismark coverage file (ending in GpC.cov)."
    nome_seq: "Sample is NOMe-Seq (nucleosome occupancy and methylome sequencing) where accessible DNA gets methylated\\nin a GpC context (sets option '--gc' as well). The option '--nome-seq':\\n(i) filters the genome-wide CpG-report to only output cytosines in ACG and TCG context\\n(ii) filters the GC context output to only report cytosines in GCA, GCC and GCT context\\nBoth of these measures aim to reduce unwanted biases, i.e. the influence of GCG and CCG on endogenous\\nCpG methylation, and the inlfluence of CpG methylation on (the NOMe-Seq specific) GC context methylation.\\nPLEASE NOTE that NOMe-Seq data requires a .cov.gz file as input which has been generated in\\nnon-CG mode (--CX), else the GpC output file will be empty... Default: OFF."
    coverage_threshold: "Positions have to be covered by at least INT calls (irrespective of their methylation state) before\\nthey get reported. For NOMe-seq, the minimum threshold is automatically set to 1 unless specified explicitly.\\nSetting a coverage threshold does not work in conjunction with --merge_CpGs. Default: 0 (i.e. all genomic positions get reported)."
    ff: "In addition to the standard output selecting --ff will also extract a four and five (tetra/penta)\\nnucleotide context for the cytosines in question. Too short sequences (e.g. at the edges of the\\nchromosome) will be left blank; sequences containing Ns are ignored.ll"
    zero_based: "Uses 0-based coordinates instead of 1-based coordinates throughout. Default: OFF."
    split_by_chromosome: "Writes the output into individual files for each chromosome instead of a single output file. Files\\nwill be named to include the input filename and the chromosome number."
    gzip: "Output file will be GZIP compressed (ending in .gz). Only works for standard CpG- and CX-output."
    var_input: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_mandatory = "${in_name_output_mandatory}"
    Directory out_dir = "${in_dir}"
    File out_cx_context = "${in_cx_context}"
    File out_gc_context = "${in_gc_context}"
    File out_gzip = "${in_gzip}"
  }
}
version 1.0

task ClusterSetspyBarcode {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    Boolean? fast_a
    String? delim
    Int? nproc
    String? name_add_information
    Float? ident
    Int? length
    String? prefix
    String? cluster
    File? exec
    String? annotation_field_containing
  }
  command <<<
    ClusterSets_py barcode \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(name_add_information) then ("-k " +  '"' + name_add_information + '"') else ""} \
      ~{if defined(ident) then ("--ident " +  '"' + ident + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(exec) then ("--exec " +  '"' + exec + '"') else ""} \
      ~{if defined(annotation_field_containing) then ("-f " +  '"' + annotation_field_containing + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/presto:0.6.2--py_0"
  }
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    explicit_output_file: "Explicit output file name(s). Note, this argument\\ncannot be used with the --failed, --outdir, or\\n--outname arguments. If unspecified, then the output\\nfilename will be based on the input filename(s).\\n(default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    nproc: "The number of simultaneous computational processes to\\nexecute (CPU cores to utilized). (default: 8)"
    name_add_information: "The name of the output annotation field to add with\\nthe cluster information for each sequence. (default:\\nCLUSTER)"
    ident: "The sequence identity threshold to use for clustering.\\nNote, how identity is calculated is specific to the\\nclustering application used. (default: 0.9)"
    length: "The minimum allowed shorter/longer sequence length\\nratio allowed within a cluster. Setting this value to\\n1.0 will require identical length matches within\\nclusters. A value of 0.0 will allow clusters\\ncontaining any length of substring. (default: 0.0)"
    prefix: "A string to use as the prefix for each cluster\\nidentifier. By default, cluster identifiers will be\\nnumeric values only. (default: )"
    cluster: "The clustering tool to use for assigning clusters.\\nMust be one of usearch, vsearch or cd-hit-est. Note,\\nfor cd-hit-est the maximum memory limit is set to 3GB.\\n(default: usearch)"
    exec: "The name or path of the usearch, vsearch or cd-hit-est\\nexecutable. (default: None)"
    annotation_field_containing: "The annotation field containing barcode sequences.\\n(default: BARCODE)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}
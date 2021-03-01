version 1.0

task AssignGenespyIgblastaa {
  input {
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    Int? nproc
    Array[String] list_fasta_files
    Directory? igblast_database_directory
    String? organism
    String? loci
    Directory? vdb
    File? exec
  }
  command <<<
    AssignGenes_py igblast_aa \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(list_fasta_files) then ("-s " +  '"' + list_fasta_files + '"') else ""} \
      ~{if defined(igblast_database_directory) then ("-b " +  '"' + igblast_database_directory + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(loci) then ("--loci " +  '"' + loci + '"') else ""} \
      ~{if defined(vdb) then ("--vdb " +  '"' + vdb + '"') else ""} \
      ~{if defined(exec) then ("--exec " +  '"' + exec + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicit_output_file: "Explicit output file name. Note, this argument cannot\\nbe used with the --failed, --outdir, or --outname\\narguments. If unspecified, then the output filename\\nwill be based on the input filename(s). (default:\\nNone)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    nproc: "The number of simultaneous computational processes to\\nexecute (CPU cores to utilized). (default: 8)"
    list_fasta_files: "A list of FASTA files containing sequences to process.\\n(default: None)"
    igblast_database_directory: "IgBLAST database directory (IGDATA). (default: None)"
    organism: "Organism name. (default: human)"
    loci: "The receptor type. (default: ig)"
    vdb: "Name of the custom V reference in the IgBLAST database\\nfolder. If not specified, then a default database name\\nwith the form imgt_aa_<organism>_<loci>_v will be\\nused. (default: None)"
    exec: "Path to the igblastp executable. (default: igblastp)"
  }
  output {
    File out_stdout = stdout()
  }
}
version 1.0

task CooltoolsComputeexpected {
  input {
    Int? nproc
    Int? chunksize
    File? specify_output_name
    File? hdf
    Boolean? contact_type
    File? genomic_regions
    Boolean? no_balance
    String? weight_name
    File? blacklist
    Int? ignore_diags
    String cool_path
  }
  command <<<
    cooltools compute_expected \
      ~{cool_path} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(specify_output_name) then ("--output " +  '"' + specify_output_name + '"') else ""} \
      ~{if (hdf) then "--hdf" else ""} \
      ~{if (contact_type) then "--contact-type" else ""} \
      ~{if defined(genomic_regions) then ("--genomic-regions " +  '"' + genomic_regions + '"') else ""} \
      ~{if (no_balance) then "--no-balance" else ""} \
      ~{if defined(weight_name) then ("--weight-name " +  '"' + weight_name + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if defined(ignore_diags) then ("--ignore-diags " +  '"' + ignore_diags + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0"
  }
  parameter_meta {
    nproc: "Number of processes to split the work\\nbetween.[default: 1, i.e. no process pool]"
    chunksize: "Control the number of pixels handled by each\\nworker process at a time.  [default:\\n10000000]"
    specify_output_name: "Specify output file name to store the\\nexpected in a tsv format."
    hdf: "Use hdf5 format instead of tsv. Output file\\nname must be specified [Not Implemented]."
    contact_type: "[cis|trans]  compute expected for cis or trans region of\\na Hi-C map.Ignored when genomic-regions are\\nprovided  [default: cis]"
    genomic_regions: "Path to a BED or BEDPE file containing\\ngenomic regions for which expected will be\\ncalculated. [Not Implemented]"
    no_balance: "Apply balancing weights to data before\\ncalculating expected.Bins masked in the\\nbalancing weights are ignored from\\ncalcualtions.  [default: True]"
    weight_name: "Use balancing weight with this name.\\n[default: weight]"
    blacklist: "Path to a 3-column BED file containing\\ngenomic regions to mask out during\\ncalculation of expected. Overwrites\\ninference of 'bad' regions from balancing\\nweights. [Not Implemented]"
    ignore_diags: "Number of diagonals to neglect for cis\\ncontact type  [default: 2]"
    cool_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_name = "${in_specify_output_name}"
    File out_hdf = "${in_hdf}"
    File out_blacklist = "${in_blacklist}"
  }
}
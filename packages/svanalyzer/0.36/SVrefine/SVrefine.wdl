version 1.0

task SVrefine {
  input {
    File? bam
    File? delta
    File? regions
    File? ref_fast_a
    File? query_fast_a
    File? prefix
    File? out_vcf
    String? refname
    Boolean? sample_name
    Int? maxsize
    Boolean? noheader
    Boolean? no_cov
    File? sv_regions
    Boolean? includes_eqs
    File? verbose
    File? out_ref
    String for
    String complete
    String documentation
  }
  command <<<
    SVrefine \
      ~{for} \
      ~{complete} \
      ~{documentation} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(ref_fast_a) then ("--ref_fasta " +  '"' + ref_fast_a + '"') else ""} \
      ~{if defined(query_fast_a) then ("--query_fasta " +  '"' + query_fast_a + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(out_vcf) then ("--outvcf " +  '"' + out_vcf + '"') else ""} \
      ~{if defined(refname) then ("--refname " +  '"' + refname + '"') else ""} \
      ~{if (sample_name) then "--samplename" else ""} \
      ~{if defined(maxsize) then ("--maxsize " +  '"' + maxsize + '"') else ""} \
      ~{if (noheader) then "--noheader" else ""} \
      ~{if (no_cov) then "--nocov" else ""} \
      ~{if defined(sv_regions) then ("--svregions " +  '"' + sv_regions + '"') else ""} \
      ~{if (includes_eqs) then "--includeseqs" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(out_ref) then ("--outref " +  '"' + out_ref + '"') else ""}
  >>>
  parameter_meta {
    bam: "Specify a BAM file produced by MiniMap2 with the alignments to be\\nused for retrieving SV sequence information. (Either a BAM file or a\\nMUMmer-generated delta file is required)."
    delta: "Specify a delta file produced by MUMmer with the alignments to be\\nused for retrieving SV sequence information. Generally, one would\\nuse the same filtered delta file that was used to create the \\\"diff\\\"\\nfile (see below). (Either a BAM file or a MUMmer-generated delta\\nfile is required)."
    regions: "Specify a BED file of regions to be investigated for structural\\nvariants in the assembly (i.e., the query fasta file). If not\\nprovided, potential regions with structural variation are discovered\\nfrom the endpoints of alignments in the supplied MUMmer alignment\\nfile. (Optional)."
    ref_fast_a: "Specify the path to a multi-fasta file containing the sequences used\\nas reference in the alignments. If not specified, and a MUMmer delta\\nfile path is provided using the --delta option on the command line,\\nthe script uses the reference path obtained by parsing the delta\\nfile's first line. (Optional)."
    query_fast_a: "Specify the path to a multi-fasta file containing the sequences used\\nas the query in the alignments. If not specified, and a MUMmer delta\\nfile path is provided using the --delta option on the command line,\\nthe script uses the query path obtained by parsing the delta file's\\nfirst line. (Optional)."
    prefix: "Specify a string to use as the prefix to output files created by\\nthis program. Unless specified by a different option, the output VCF\\nfile will be <prefix>.vcf.gz, the log file will be <prefix>.log,\\netc. (Default: \\\"SVrefine\\\")"
    out_vcf: "Specify the path to which to write a new VCF file containing the\\nstructural variants discovered in this comparison. BEWARE: if this\\nfile already exists, it will be overwritten!"
    refname: "Specify a string to be written as the reference name in the\\n##reference line of the VCF header. (Optional)."
    sample_name: "<string to include as the sample name in the \\\"CHROM\\\" line>\\nSpecify a string to be written as the sample name in the header\\nspecifying a genotype column in the VCF line beginning with \\\"CHROM\\\".\\n(Optional)."
    maxsize: "Specify an integer for the maximum size of SV to report. (Optional)."
    noheader: "Flag option to suppress printout of the VCF header."
    no_cov: "<path to write a BED file with \\\"no coverage\\\" regions>\\nSpecify the path to which to write a BED file containing the regions\\nof the input BED file which had no spanning coverage in the query\\nalignments. (Optional)."
    sv_regions: "Specify the path to which to write a BED file containing the widened\\ncoordinates of structural variants. These are the same coordinates\\nreported in the \\\"WIDENEDREF\\\" tag in the variant VCF. (Optional)."
    includes_eqs: "Write sequences from the reference FASTA file into the \\\"REF\\\" and\\n\\\"ALT\\\" fields of the VCF."
    verbose: "Write verbose output, debugging information, etc. to the log file."
    out_ref: ""
    for: ""
    complete: ""
    documentation: ""
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
    File out_verbose = "${in_verbose}"
  }
}
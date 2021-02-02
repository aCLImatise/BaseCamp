version 1.0

task VtoolsExport {
  input {
    File? name_output_file
    File? samples_will_exported
    File? format
    Int? build
    Boolean? header
    Int? jobs
    String? verbosity
    String? var_output
    String? cond
  }
  command <<<
    vtools export \
      ~{var_output} \
      ~{cond} \
      ~{if (name_output_file) then "-o" else ""} \
      ~{if (samples_will_exported) then "-s" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(build) then ("--build " +  '"' + build + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    name_output_file: "[OUTPUT], --output [OUTPUT]\\nName of output file. Output will be written to the\\nstandard output if this parameter is left unspecified."
    samples_will_exported: "[COND [COND ...]], --samples [COND [COND ...]]\\nSamples that will be exported, specified by conditions\\nsuch as 'aff=1' and 'filename like \\\"MG%\\\"'. Multiple\\nsamples could be exported to a file if the output\\nformat allows. No sample will be outputted if this\\nparameter is ignored."
    format: "Format of the exported file. It can be one of the\\nvariant tools supported file types such as VCF (cf.\\n'vtools show formats') or a local format specification\\nfile (with extension .fmt). Some formats accept\\nadditional parameters (cf. 'vtools show format FMT')\\nand allows you to export additional or alternative\\nfields."
    build: "Build version of the reference genome (e.g. hg18) of\\nthe exported data. It can only be one of the primary\\n(default) of alternative (if exists) reference genome\\nof the project."
    header: "[HEADER [HEADER ...]]\\nA complete header or a list of names that will be\\njoined by a delimiter specified by the file format to\\nform a header. If a special name - is specified, the\\nheader will be read from the standard input, which is\\nthe preferred way to specify large multi-line headers\\n(e.g. cat myheader | vtools export --header -).\\nStrings in the form of %(VAR)s will be interpolated to\\nvalues of variable VAR, which can be \\\"sample_names\\\"\\nfor list of sample names, \\\"datetime\\\" for current date\\nand time, and \\\"command\\\" for the command used to create\\noutput."
    jobs: "Number of processes to export data. Multiple threads\\nwill be automatically used if there are a large number\\nof samples."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    var_output: ""
    cond: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
    File out_samples_will_exported = "${in_samples_will_exported}"
  }
}
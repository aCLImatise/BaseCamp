version 1.0

task EmblApiValidator {
  input {
    Boolean? assembly
    Boolean? de
    Boolean? file_values_embl
    Boolean? filter
    Boolean? fix
    Boolean? fix_diagnose
    Boolean? log_leveloptional_values
    Boolean? low_memory
    Boolean? min_gap_length
    Boolean? prefix
    Boolean? remote_run_ebioptional
    Boolean? skip
    Boolean? version
    Boolean? wrap
    String en_a_validator
    File files
  }
  command <<<
    embl-api-validator \
      ~{en_a_validator} \
      ~{files} \
      ~{true="-assembly" false="" assembly} \
      ~{true="-de" false="" de} \
      ~{true="-f" false="" file_values_embl} \
      ~{true="-filter" false="" filter} \
      ~{true="-fix" false="" fix} \
      ~{true="-fix_diagnose" false="" fix_diagnose} \
      ~{true="-l" false="" log_leveloptional_values} \
      ~{true="-lowmemory" false="" low_memory} \
      ~{true="-min_gap_length" false="" min_gap_length} \
      ~{true="-prefix" false="" prefix} \
      ~{true="-r" false="" remote_run_ebioptional} \
      ~{true="-skip" false="" skip} \
      ~{true="-version" false="" version} \
      ~{true="-wrap" false="" wrap}
  >>>
  parameter_meta {
    assembly: "genome assembly entries (default: false)"
    de: "Additional Fix :Adds/Fixes DE line(optional) (default: false)"
    file_values_embl: "File format(optional) Values:'embl','genbank','gff3','assembly' (default: embl)"
    filter: "-filter <prefix> Store entries in <prefix>_good.txt and <prefix>_bad.txt files in the working directory. Entries with errors are stored in the bad file and entries without errors are stored in the good file. (optional)(default :false)"
    fix: "Fixes entries in input files. Stores input files in 'original_files' folder. (optional) (default: false)"
    fix_diagnose: "Creates 'diagnose' folder in the current directory with original entries in <filename>_origin file and the fixed entries in <filename>_fixed file. Only fixed entries will be stored in these files.(optional)  (default: false)"
    log_leveloptional_values: "Log level(optional) Values : 0(Quiet), 1(Summary), 2(Verbose) (default: 1)"
    low_memory: "Runs in low memory usage mode. Writes error logs but does not show message summary(optional) (default: false)"
    min_gap_length: "minimum gap length to generate assembly_gap/gap features, use assembly flag to add assembly_gap features (default: 0)"
    prefix: "Adds prefix to report files"
    remote_run_ebioptional: "Remote, is this being run outside the EBI(optional) (default: false)"
    skip: "-skip <errorcode1>,<errorcode2>,... Ignore specified errors.(optional)(default:false) "
    version: "Displays implementation version of Jar (default: false)"
    wrap: "Turns on line wrapping in flat file writing (optional)  (default: false)"
    en_a_validator: ""
    files: ""
  }
}
version 1.0

task RapidDiffsh {
  input {
    File? out
    File? conf
    Int? alpha
    File? rapid
    Int? restrict_length
  }
  command <<<
    rapidDiff_sh \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(rapid) then ("--rapid " +  '"' + rapid + '"') else ""} \
      ~{if defined(restrict_length) then ("--restrictlength " +  '"' + restrict_length + '"') else ""}
  >>>
  parameter_meta {
    out: ": path to the output directory, directory will be created if non-existent"
    conf: ": the config file that defines which rapidStats analysis folders should be used"
    alpha: "(default) : Alpha value cut off for adjusted p-value to use in MAPlot"
    rapid: ": set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/) or put into PATH variable"
    restrict_length: ": Read Lengths to be considered. If not provided, all reads will be used. (Multiple read lengths should be separated by commas)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}
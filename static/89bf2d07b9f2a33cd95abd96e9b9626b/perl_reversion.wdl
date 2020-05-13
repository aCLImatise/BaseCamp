version 1.0

task PerlReversion {
  input {
    String setSet
    String currentCurrent
    Boolean normalNormal
    Boolean numiNumiFy
    Boolean stringifyStringify
    Boolean dryDryRun
  }
  command <<<
    perl-reversion \
      ~{if defined(setSet) then ("-set " +  '"' + setSet + '"') else ""} \
      ~{if defined(currentCurrent) then ("-current " +  '"' + currentCurrent + '"') else ""} \
      ~{true="-normal" false="" normalNormal} \
      ~{true="-numify" false="" numiNumiFy} \
      ~{true="-stringify" false="" stringifyStringify} \
      ~{true="-dryrun" false="" dryDryRun}
  >>>
}
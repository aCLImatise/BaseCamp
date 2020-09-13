version 1.0

task FetchDiscordantpl {
  command <<<
    fetch_discordant_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}
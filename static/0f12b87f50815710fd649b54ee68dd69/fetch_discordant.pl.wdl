version 1.0

task FetchDiscordantpl {
  command <<<
    fetch_discordant_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}
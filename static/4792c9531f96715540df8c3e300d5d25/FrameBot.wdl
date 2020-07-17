version 1.0

task FrameBot {
  input {
    String main
    String subcommand
    String subcommand_args_dot_dot_dot
  }
  command <<<
    FrameBot \
      ~{main} \
      ~{subcommand} \
      ~{subcommand_args_dot_dot_dot}
  >>>
  parameter_meta {
    main: ""
    subcommand: ""
    subcommand_args_dot_dot_dot: ""
  }
}
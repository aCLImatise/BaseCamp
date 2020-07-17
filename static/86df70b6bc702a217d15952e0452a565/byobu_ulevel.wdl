version 1.0

task ByobuUlevel {
  input {
    Boolean? accessibility_mode_only
    Boolean? display_current_value
    String? current_value_indicator
    Boolean? enable_debug_output
    Int? number_decimal_use
    Boolean? invert_colour_scheme
    Boolean? list_available_themes
    String? minimum_value_default
    Boolean? supress_output_newline
    Boolean? permissive_mode_current
    Boolean? suppress_messages_requires
    Boolean? reverse_display_rating
    String? name_theme_defaultvbars
    String? specify_more_values
    Int? width_rating_default
    String? maximum_value_default
  }
  command <<<
    byobu-ulevel \
      ~{true="-a" false="" accessibility_mode_only} \
      ~{true="-b" false="" display_current_value} \
      ~{if defined(current_value_indicator) then ("-c " +  '"' + current_value_indicator + '"') else ""} \
      ~{true="-d" false="" enable_debug_output} \
      ~{if defined(number_decimal_use) then ("-e " +  '"' + number_decimal_use + '"') else ""} \
      ~{true="-i" false="" invert_colour_scheme} \
      ~{true="-l" false="" list_available_themes} \
      ~{if defined(minimum_value_default) then ("-m " +  '"' + minimum_value_default + '"') else ""} \
      ~{true="-n" false="" supress_output_newline} \
      ~{true="-p" false="" permissive_mode_current} \
      ~{true="-q" false="" suppress_messages_requires} \
      ~{true="-r" false="" reverse_display_rating} \
      ~{if defined(name_theme_defaultvbars) then ("-t " +  '"' + name_theme_defaultvbars + '"') else ""} \
      ~{if defined(specify_more_values) then ("-u " +  '"' + specify_more_values + '"') else ""} \
      ~{if defined(width_rating_default) then ("-w " +  '"' + width_rating_default + '"') else ""} \
      ~{if defined(maximum_value_default) then ("-x " +  '"' + maximum_value_default + '"') else ""}
  >>>
  parameter_meta {
    accessibility_mode_only: ": Accessibility mode: only output ASCII. (Also enabled if variable 'BYOBU_A11Y' set)."
    display_current_value: ": Display current value as space if zero, rather than lowest 'value' of theme."
    current_value_indicator: ": Current value of your indicator."
    enable_debug_output: ": Enable debug output."
    number_decimal_use: ": Number of decimal places to use for accessibility mode (default=2)."
    invert_colour_scheme: ": Invert colour scheme (rating themes only)."
    list_available_themes: ": List available themes. If '-t' also specified, show all values for specified theme."
    minimum_value_default: ": Minimum value (default=0)."
    supress_output_newline: ": Supress output of newline character."
    permissive_mode_current: ": Permissive mode - if current value out of bounds, set it to the nearest bound (min or max)."
    suppress_messages_requires: ": Suppress messages (requires '-t')."
    reverse_display_rating: ": Reverse 'direction' of display (rating theme only)."
    name_theme_defaultvbars: ": Name of theme (default=vbars_8)."
    specify_more_values: ": Specify a user theme (2 or more values)."
    width_rating_default: ": Width of rating theme (default=5)."
    maximum_value_default: ": Maximum value (default=100)."
  }
}
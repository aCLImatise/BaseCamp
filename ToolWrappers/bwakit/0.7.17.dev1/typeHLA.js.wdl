version 1.0

task TypeHLAjs {
  input {
    Boolean? use_strict
    Boolean? es_five_readonly
    Boolean? es_five_two_globals
    Boolean? harmony_type_of
    Boolean? harmony_scoping
    Boolean? harmony_modules
    Boolean? harmony_proxies
    Boolean? harmony_collections
    Boolean? harmony_observation
    Boolean? harmony
    Boolean? packed_arrays
    Boolean? smi_only_arrays
    Boolean? clever_optimizations
    Boolean? unbox_double_arrays
    Boolean? string_slices
    Boolean? crankshaft
    Boolean? hydrogen_filter
    Boolean? use_range
    Boolean? eliminate_dead_p_his
    Boolean? use_gvn
    Boolean? use_canonical_izing
    Boolean? use_inlining
    Boolean? max_inlined_source_size
    Boolean? max_inlined_nodes
    Boolean? max_inlined_nodes_cumulative
    Boolean? loop_invariant_code_motion
    Boolean? fast_math
    Boolean? collect_mega_morphic_maps_from_stub_cache
    Boolean? hydrogen_stats
    Boolean? trace_hydrogen
    Boolean? trace_phase
    Boolean? trace_inlining
    Boolean? trace_alloc
    Boolean? trace_all_uses
    Boolean? trace_range
    Boolean? trace_gvn
    Boolean? trace_representation
    Boolean? stress_pointer_maps
    Boolean? stress_environments
    Boolean? deopt_every_n_times
    Boolean? trap_on_deopt
    Boolean? de_optimize_uncommon_cases
    Boolean? polymorphic_inlining
    Boolean? use_osr
    Boolean? array_bounds_checks_elimination
    Boolean? array_index_de_hoisting
    Boolean? dead_code_elimination
    Boolean? trace_dead_code_elimination
    Boolean? track_allocation_sites
    Boolean? trace_osr
    Boolean? stress_runs
    Boolean? optimize_closures
    Boolean? lookup_sample_by_shared
    Boolean? cache_optimized_code
    Boolean? inline_construct
    Boolean? inline_arguments
    Boolean? inline_accessors
    Boolean? loop_weight
    Boolean? optimize_for_in
    Boolean? opt_safe_uint_three_two_operations
    Boolean? parallel_recompilation
    Boolean? trace_parallel_recompilation
    Boolean? parallel_recompilation_queue_length
    Boolean? manual_parallel_recompilation
    Boolean? experimental_profiler
    Boolean? watch_ic_patching
    Boolean? frame_count
    Boolean? self_optimization
    Boolean? direct_self_opt
    Boolean? retry_self_opt
    Boolean? interrupt_at_exit
    Boolean? weighted_back_edges
    Boolean? interrupt_budget
    Boolean? type_info_threshold
    Boolean? self_opt_count
    Boolean? trace_opt_verbose
    Boolean? debug_code
    Boolean? code_comments
    Boolean? enable_sse_two
    Boolean? enable_sse_three
    Boolean? enable_sse_four_one
    Boolean? enable_cmov
    Boolean? enable_r_dtsc
    Boolean? enable_sa_hf
    Boolean? enable_vfp_three
    Boolean? enable_vfp_two
    Boolean? enable_arm_vs_even
    Boolean? enable_su_div
    Boolean? enable_movw_movt
    Boolean? enable_unaligned_accesses
    Boolean? enable_fpu
    Boolean? enable_vl_dr_imm
    Boolean? expose_natives_as
    Boolean? expose_debug_as
    Boolean? expose_gc
    Boolean? expose_externalize_string
    Boolean? stack_trace_limit
    Boolean? builtins_in_stack_traces
    Boolean? disable_native_files
    Boolean? inline_new
    Boolean? stack_trace_on_abort
    Boolean? trace
    Boolean? mask_constants_with_cookie
    Boolean? lazy
    Boolean? trace_opt
    Boolean? trace_opt_stats
    Boolean? opt
    Boolean? always_opt
    Boolean? prepare_always_opt
    Boolean? trace_deopt
    Boolean? min_pre_parse_length
    Boolean? always_full_compiler
    Boolean? max_opt_count
    Boolean? compilation_cache
    Boolean? cache_prototype_transitions
    Boolean? trace_debug_json
    Boolean? debugger_auto_break
    Boolean? enable_live_edit
    Boolean? break_on_abort
    Boolean? stack_size
    Boolean? max_stack_trace_source_length
    Boolean? always_inline_smi_code
    Boolean? max_new_space_size
    Boolean? max_old_space_size
    Boolean? max_executable_size
    Boolean? gc_global
    Boolean? gc_interval
    Boolean? trace_gc
    Boolean? trace_gc_nvp
    Boolean? trace_gc_ignore_scavenger
    Boolean? print_cumulative_gc_stat
    Boolean? trace_gc_verbose
    Boolean? trace_fragmentation
    Boolean? trace_external_memory
    Boolean? collect_maps
    Boolean? flush_code
    Boolean? flush_code_incrementally
    Boolean? age_code
    Boolean? incremental_marking
    Boolean? incremental_marking_steps
    Boolean? trace_incremental_marking
    Boolean? track_gc_object_stats
    Boolean? use_idle_notification
    Boolean? use_ic
    Boolean? native_code_counters
    Boolean? always_compact
    Boolean? lazy_sweeping
    Boolean? never_compact
    Boolean? compact_code_space
    Boolean? incremental_code_compaction
    Boolean? cleanup_code_caches_at_gc
    Boolean? use_marking_progress_bar
    Boolean? random_seed
    Boolean? use_verbose_printer
    Boolean? allow_natives_syntax
    Boolean? trace_parse
    Boolean? trace_sim
    Boolean? check_i_cache
    Boolean? stop_sim_at
    Boolean? sim_stack_alignment
    Boolean? trace_exception
    Boolean? pre_allocate_message_memory
    Boolean? randomize_hashes
    Boolean? hash_seed
    Boolean? preemption
    Boolean? regexp_optimization
    Boolean? testing_bool_flag
    Boolean? testing_int_flag
    Boolean? testing_float_flag
    Boolean? testing_string_flag
    Boolean? testing_prng_seed
    Boolean? testing_serialization_file
    Boolean? extra_code
    Boolean? dump_counters
    Boolean? debugger
    Boolean? remote_debugger
    Boolean? debugger_agent
    Boolean? debugger_port
    Boolean? map_counters
    Boolean? js_arguments
    Boolean? debug_compile_events
    Boolean? debug_script_collected_events
    Boolean? gdb_jit
    Boolean? gdb_jit_full
    Boolean? gdb_jit_dump
    Boolean? gdb_jit_dump_filter
    Boolean? force_marking_de_que_overflows
    Boolean? stress_compaction
    Boolean? log
    Boolean? log_all
    Boolean? log_runtime
    Boolean? log_api
    Boolean? log_code
    Boolean? log_gc
    Boolean? log_handles
    Boolean? log_snapshot_positions
    Boolean? log_suspect
    Boolean? prof
    Boolean? prof_auto
    Boolean? prof_lazy
    Boolean? prof_browser_mode
    Boolean? log_regexp
    Boolean? log_file
    Boolean? ll_prof
    Boolean? gc_fake_mmap
    Boolean? log_internal_timer_events
    Boolean? log_timer_events
    Boolean? var_207
    String? e
    Int d_eight
    String var_210
    String? file_k
  }
  command <<<
    typeHLA_js \
      ~{d_eight} \
      ~{var_210} \
      ~{file_k} \
      ~{if (use_strict) then "--use_strict" else ""} \
      ~{if (es_five_readonly) then "--es5_readonly" else ""} \
      ~{if (es_five_two_globals) then "--es52_globals" else ""} \
      ~{if (harmony_type_of) then "--harmony_typeof" else ""} \
      ~{if (harmony_scoping) then "--harmony_scoping" else ""} \
      ~{if (harmony_modules) then "--harmony_modules" else ""} \
      ~{if (harmony_proxies) then "--harmony_proxies" else ""} \
      ~{if (harmony_collections) then "--harmony_collections" else ""} \
      ~{if (harmony_observation) then "--harmony_observation" else ""} \
      ~{if (harmony) then "--harmony" else ""} \
      ~{if (packed_arrays) then "--packed_arrays" else ""} \
      ~{if (smi_only_arrays) then "--smi_only_arrays" else ""} \
      ~{if (clever_optimizations) then "--clever_optimizations" else ""} \
      ~{if (unbox_double_arrays) then "--unbox_double_arrays" else ""} \
      ~{if (string_slices) then "--string_slices" else ""} \
      ~{if (crankshaft) then "--crankshaft" else ""} \
      ~{if (hydrogen_filter) then "--hydrogen_filter" else ""} \
      ~{if (use_range) then "--use_range" else ""} \
      ~{if (eliminate_dead_p_his) then "--eliminate_dead_phis" else ""} \
      ~{if (use_gvn) then "--use_gvn" else ""} \
      ~{if (use_canonical_izing) then "--use_canonicalizing" else ""} \
      ~{if (use_inlining) then "--use_inlining" else ""} \
      ~{if (max_inlined_source_size) then "--max_inlined_source_size" else ""} \
      ~{if (max_inlined_nodes) then "--max_inlined_nodes" else ""} \
      ~{if (max_inlined_nodes_cumulative) then "--max_inlined_nodes_cumulative" else ""} \
      ~{if (loop_invariant_code_motion) then "--loop_invariant_code_motion" else ""} \
      ~{if (fast_math) then "--fast_math" else ""} \
      ~{if (collect_mega_morphic_maps_from_stub_cache) then "--collect_megamorphic_maps_from_stub_cache" else ""} \
      ~{if (hydrogen_stats) then "--hydrogen_stats" else ""} \
      ~{if (trace_hydrogen) then "--trace_hydrogen" else ""} \
      ~{if (trace_phase) then "--trace_phase" else ""} \
      ~{if (trace_inlining) then "--trace_inlining" else ""} \
      ~{if (trace_alloc) then "--trace_alloc" else ""} \
      ~{if (trace_all_uses) then "--trace_all_uses" else ""} \
      ~{if (trace_range) then "--trace_range" else ""} \
      ~{if (trace_gvn) then "--trace_gvn" else ""} \
      ~{if (trace_representation) then "--trace_representation" else ""} \
      ~{if (stress_pointer_maps) then "--stress_pointer_maps" else ""} \
      ~{if (stress_environments) then "--stress_environments" else ""} \
      ~{if (deopt_every_n_times) then "--deopt_every_n_times" else ""} \
      ~{if (trap_on_deopt) then "--trap_on_deopt" else ""} \
      ~{if (de_optimize_uncommon_cases) then "--deoptimize_uncommon_cases" else ""} \
      ~{if (polymorphic_inlining) then "--polymorphic_inlining" else ""} \
      ~{if (use_osr) then "--use_osr" else ""} \
      ~{if (array_bounds_checks_elimination) then "--array_bounds_checks_elimination" else ""} \
      ~{if (array_index_de_hoisting) then "--array_index_dehoisting" else ""} \
      ~{if (dead_code_elimination) then "--dead_code_elimination" else ""} \
      ~{if (trace_dead_code_elimination) then "--trace_dead_code_elimination" else ""} \
      ~{if (track_allocation_sites) then "--track_allocation_sites" else ""} \
      ~{if (trace_osr) then "--trace_osr" else ""} \
      ~{if (stress_runs) then "--stress_runs" else ""} \
      ~{if (optimize_closures) then "--optimize_closures" else ""} \
      ~{if (lookup_sample_by_shared) then "--lookup_sample_by_shared" else ""} \
      ~{if (cache_optimized_code) then "--cache_optimized_code" else ""} \
      ~{if (inline_construct) then "--inline_construct" else ""} \
      ~{if (inline_arguments) then "--inline_arguments" else ""} \
      ~{if (inline_accessors) then "--inline_accessors" else ""} \
      ~{if (loop_weight) then "--loop_weight" else ""} \
      ~{if (optimize_for_in) then "--optimize_for_in" else ""} \
      ~{if (opt_safe_uint_three_two_operations) then "--opt_safe_uint32_operations" else ""} \
      ~{if (parallel_recompilation) then "--parallel_recompilation" else ""} \
      ~{if (trace_parallel_recompilation) then "--trace_parallel_recompilation" else ""} \
      ~{if (parallel_recompilation_queue_length) then "--parallel_recompilation_queue_length" else ""} \
      ~{if (manual_parallel_recompilation) then "--manual_parallel_recompilation" else ""} \
      ~{if (experimental_profiler) then "--experimental_profiler" else ""} \
      ~{if (watch_ic_patching) then "--watch_ic_patching" else ""} \
      ~{if (frame_count) then "--frame_count" else ""} \
      ~{if (self_optimization) then "--self_optimization" else ""} \
      ~{if (direct_self_opt) then "--direct_self_opt" else ""} \
      ~{if (retry_self_opt) then "--retry_self_opt" else ""} \
      ~{if (interrupt_at_exit) then "--interrupt_at_exit" else ""} \
      ~{if (weighted_back_edges) then "--weighted_back_edges" else ""} \
      ~{if (interrupt_budget) then "--interrupt_budget" else ""} \
      ~{if (type_info_threshold) then "--type_info_threshold" else ""} \
      ~{if (self_opt_count) then "--self_opt_count" else ""} \
      ~{if (trace_opt_verbose) then "--trace_opt_verbose" else ""} \
      ~{if (debug_code) then "--debug_code" else ""} \
      ~{if (code_comments) then "--code_comments" else ""} \
      ~{if (enable_sse_two) then "--enable_sse2" else ""} \
      ~{if (enable_sse_three) then "--enable_sse3" else ""} \
      ~{if (enable_sse_four_one) then "--enable_sse4_1" else ""} \
      ~{if (enable_cmov) then "--enable_cmov" else ""} \
      ~{if (enable_r_dtsc) then "--enable_rdtsc" else ""} \
      ~{if (enable_sa_hf) then "--enable_sahf" else ""} \
      ~{if (enable_vfp_three) then "--enable_vfp3" else ""} \
      ~{if (enable_vfp_two) then "--enable_vfp2" else ""} \
      ~{if (enable_arm_vs_even) then "--enable_armv7" else ""} \
      ~{if (enable_su_div) then "--enable_sudiv" else ""} \
      ~{if (enable_movw_movt) then "--enable_movw_movt" else ""} \
      ~{if (enable_unaligned_accesses) then "--enable_unaligned_accesses" else ""} \
      ~{if (enable_fpu) then "--enable_fpu" else ""} \
      ~{if (enable_vl_dr_imm) then "--enable_vldr_imm" else ""} \
      ~{if (expose_natives_as) then "--expose_natives_as" else ""} \
      ~{if (expose_debug_as) then "--expose_debug_as" else ""} \
      ~{if (expose_gc) then "--expose_gc" else ""} \
      ~{if (expose_externalize_string) then "--expose_externalize_string" else ""} \
      ~{if (stack_trace_limit) then "--stack_trace_limit" else ""} \
      ~{if (builtins_in_stack_traces) then "--builtins_in_stack_traces" else ""} \
      ~{if (disable_native_files) then "--disable_native_files" else ""} \
      ~{if (inline_new) then "--inline_new" else ""} \
      ~{if (stack_trace_on_abort) then "--stack_trace_on_abort" else ""} \
      ~{if (trace) then "--trace" else ""} \
      ~{if (mask_constants_with_cookie) then "--mask_constants_with_cookie" else ""} \
      ~{if (lazy) then "--lazy" else ""} \
      ~{if (trace_opt) then "--trace_opt" else ""} \
      ~{if (trace_opt_stats) then "--trace_opt_stats" else ""} \
      ~{if (opt) then "--opt" else ""} \
      ~{if (always_opt) then "--always_opt" else ""} \
      ~{if (prepare_always_opt) then "--prepare_always_opt" else ""} \
      ~{if (trace_deopt) then "--trace_deopt" else ""} \
      ~{if (min_pre_parse_length) then "--min_preparse_length" else ""} \
      ~{if (always_full_compiler) then "--always_full_compiler" else ""} \
      ~{if (max_opt_count) then "--max_opt_count" else ""} \
      ~{if (compilation_cache) then "--compilation_cache" else ""} \
      ~{if (cache_prototype_transitions) then "--cache_prototype_transitions" else ""} \
      ~{if (trace_debug_json) then "--trace_debug_json" else ""} \
      ~{if (debugger_auto_break) then "--debugger_auto_break" else ""} \
      ~{if (enable_live_edit) then "--enable_liveedit" else ""} \
      ~{if (break_on_abort) then "--break_on_abort" else ""} \
      ~{if (stack_size) then "--stack_size" else ""} \
      ~{if (max_stack_trace_source_length) then "--max_stack_trace_source_length" else ""} \
      ~{if (always_inline_smi_code) then "--always_inline_smi_code" else ""} \
      ~{if (max_new_space_size) then "--max_new_space_size" else ""} \
      ~{if (max_old_space_size) then "--max_old_space_size" else ""} \
      ~{if (max_executable_size) then "--max_executable_size" else ""} \
      ~{if (gc_global) then "--gc_global" else ""} \
      ~{if (gc_interval) then "--gc_interval" else ""} \
      ~{if (trace_gc) then "--trace_gc" else ""} \
      ~{if (trace_gc_nvp) then "--trace_gc_nvp" else ""} \
      ~{if (trace_gc_ignore_scavenger) then "--trace_gc_ignore_scavenger" else ""} \
      ~{if (print_cumulative_gc_stat) then "--print_cumulative_gc_stat" else ""} \
      ~{if (trace_gc_verbose) then "--trace_gc_verbose" else ""} \
      ~{if (trace_fragmentation) then "--trace_fragmentation" else ""} \
      ~{if (trace_external_memory) then "--trace_external_memory" else ""} \
      ~{if (collect_maps) then "--collect_maps" else ""} \
      ~{if (flush_code) then "--flush_code" else ""} \
      ~{if (flush_code_incrementally) then "--flush_code_incrementally" else ""} \
      ~{if (age_code) then "--age_code" else ""} \
      ~{if (incremental_marking) then "--incremental_marking" else ""} \
      ~{if (incremental_marking_steps) then "--incremental_marking_steps" else ""} \
      ~{if (trace_incremental_marking) then "--trace_incremental_marking" else ""} \
      ~{if (track_gc_object_stats) then "--track_gc_object_stats" else ""} \
      ~{if (use_idle_notification) then "--use_idle_notification" else ""} \
      ~{if (use_ic) then "--use_ic" else ""} \
      ~{if (native_code_counters) then "--native_code_counters" else ""} \
      ~{if (always_compact) then "--always_compact" else ""} \
      ~{if (lazy_sweeping) then "--lazy_sweeping" else ""} \
      ~{if (never_compact) then "--never_compact" else ""} \
      ~{if (compact_code_space) then "--compact_code_space" else ""} \
      ~{if (incremental_code_compaction) then "--incremental_code_compaction" else ""} \
      ~{if (cleanup_code_caches_at_gc) then "--cleanup_code_caches_at_gc" else ""} \
      ~{if (use_marking_progress_bar) then "--use_marking_progress_bar" else ""} \
      ~{if (random_seed) then "--random_seed" else ""} \
      ~{if (use_verbose_printer) then "--use_verbose_printer" else ""} \
      ~{if (allow_natives_syntax) then "--allow_natives_syntax" else ""} \
      ~{if (trace_parse) then "--trace_parse" else ""} \
      ~{if (trace_sim) then "--trace_sim" else ""} \
      ~{if (check_i_cache) then "--check_icache" else ""} \
      ~{if (stop_sim_at) then "--stop_sim_at" else ""} \
      ~{if (sim_stack_alignment) then "--sim_stack_alignment" else ""} \
      ~{if (trace_exception) then "--trace_exception" else ""} \
      ~{if (pre_allocate_message_memory) then "--preallocate_message_memory" else ""} \
      ~{if (randomize_hashes) then "--randomize_hashes" else ""} \
      ~{if (hash_seed) then "--hash_seed" else ""} \
      ~{if (preemption) then "--preemption" else ""} \
      ~{if (regexp_optimization) then "--regexp_optimization" else ""} \
      ~{if (testing_bool_flag) then "--testing_bool_flag" else ""} \
      ~{if (testing_int_flag) then "--testing_int_flag" else ""} \
      ~{if (testing_float_flag) then "--testing_float_flag" else ""} \
      ~{if (testing_string_flag) then "--testing_string_flag" else ""} \
      ~{if (testing_prng_seed) then "--testing_prng_seed" else ""} \
      ~{if (testing_serialization_file) then "--testing_serialization_file" else ""} \
      ~{if (extra_code) then "--extra_code" else ""} \
      ~{if (dump_counters) then "--dump_counters" else ""} \
      ~{if (debugger) then "--debugger" else ""} \
      ~{if (remote_debugger) then "--remote_debugger" else ""} \
      ~{if (debugger_agent) then "--debugger_agent" else ""} \
      ~{if (debugger_port) then "--debugger_port" else ""} \
      ~{if (map_counters) then "--map_counters" else ""} \
      ~{if (js_arguments) then "--js_arguments" else ""} \
      ~{if (debug_compile_events) then "--debug_compile_events" else ""} \
      ~{if (debug_script_collected_events) then "--debug_script_collected_events" else ""} \
      ~{if (gdb_jit) then "--gdbjit" else ""} \
      ~{if (gdb_jit_full) then "--gdbjit_full" else ""} \
      ~{if (gdb_jit_dump) then "--gdbjit_dump" else ""} \
      ~{if (gdb_jit_dump_filter) then "--gdbjit_dump_filter" else ""} \
      ~{if (force_marking_de_que_overflows) then "--force_marking_deque_overflows" else ""} \
      ~{if (stress_compaction) then "--stress_compaction" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (log_all) then "--log_all" else ""} \
      ~{if (log_runtime) then "--log_runtime" else ""} \
      ~{if (log_api) then "--log_api" else ""} \
      ~{if (log_code) then "--log_code" else ""} \
      ~{if (log_gc) then "--log_gc" else ""} \
      ~{if (log_handles) then "--log_handles" else ""} \
      ~{if (log_snapshot_positions) then "--log_snapshot_positions" else ""} \
      ~{if (log_suspect) then "--log_suspect" else ""} \
      ~{if (prof) then "--prof" else ""} \
      ~{if (prof_auto) then "--prof_auto" else ""} \
      ~{if (prof_lazy) then "--prof_lazy" else ""} \
      ~{if (prof_browser_mode) then "--prof_browser_mode" else ""} \
      ~{if (log_regexp) then "--log_regexp" else ""} \
      ~{if (log_file) then "--logfile" else ""} \
      ~{if (ll_prof) then "--ll_prof" else ""} \
      ~{if (gc_fake_mmap) then "--gc_fake_mmap" else ""} \
      ~{if (log_internal_timer_events) then "--log_internal_timer_events" else ""} \
      ~{if (log_timer_events) then "--log_timer_events" else ""} \
      ~{if (var_207) then "--shell" else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_strict: "(enforce strict mode)\\ntype: bool  default: false"
    es_five_readonly: "(activate correct semantics for inheriting readonliness)\\ntype: bool  default: true"
    es_five_two_globals: "(activate new semantics for global var declarations)\\ntype: bool  default: true"
    harmony_type_of: "(enable harmony semantics for typeof)\\ntype: bool  default: false"
    harmony_scoping: "(enable harmony block scoping)\\ntype: bool  default: false"
    harmony_modules: "(enable harmony modules (implies block scoping))\\ntype: bool  default: false"
    harmony_proxies: "(enable harmony proxies)\\ntype: bool  default: false"
    harmony_collections: "(enable harmony collections (sets, maps, and weak maps))\\ntype: bool  default: false"
    harmony_observation: "(enable harmony object observation (implies harmony collections)\\ntype: bool  default: false"
    harmony: "(enable all harmony features (except typeof))\\ntype: bool  default: false"
    packed_arrays: "(optimizes arrays that have no holes)\\ntype: bool  default: true"
    smi_only_arrays: "(tracks arrays with only smi values)\\ntype: bool  default: true"
    clever_optimizations: "(Optimize object size, Array shift, DOM strings and string +)\\ntype: bool  default: true"
    unbox_double_arrays: "(automatically unbox arrays of doubles)\\ntype: bool  default: true"
    string_slices: "(use string slices)\\ntype: bool  default: true"
    crankshaft: "(use crankshaft)\\ntype: bool  default: true"
    hydrogen_filter: "(optimization filter)\\ntype: string  default:"
    use_range: "(use hydrogen range analysis)\\ntype: bool  default: true"
    eliminate_dead_p_his: "(eliminate dead phis)\\ntype: bool  default: true"
    use_gvn: "(use hydrogen global value numbering)\\ntype: bool  default: true"
    use_canonical_izing: "(use hydrogen instruction canonicalizing)\\ntype: bool  default: true"
    use_inlining: "(use function inlining)\\ntype: bool  default: true"
    max_inlined_source_size: "(maximum source size in bytes considered for a single inlining)\\ntype: int  default: 600"
    max_inlined_nodes: "(maximum number of AST nodes considered for a single inlining)\\ntype: int  default: 196"
    max_inlined_nodes_cumulative: "(maximum cumulative number of AST nodes considered for inlining)\\ntype: int  default: 196"
    loop_invariant_code_motion: "(loop invariant code motion)\\ntype: bool  default: true"
    fast_math: "(faster (but maybe less accurate) math functions)\\ntype: bool  default: true"
    collect_mega_morphic_maps_from_stub_cache: "(crankshaft harvests type feedback from stub cache)\\ntype: bool  default: true"
    hydrogen_stats: "(print statistics for hydrogen)\\ntype: bool  default: false"
    trace_hydrogen: "(trace generated hydrogen to file)\\ntype: bool  default: false"
    trace_phase: "(trace generated IR for specified phases)\\ntype: string  default: Z"
    trace_inlining: "(trace inlining decisions)\\ntype: bool  default: false"
    trace_alloc: "(trace register allocator)\\ntype: bool  default: false"
    trace_all_uses: "(trace all use positions)\\ntype: bool  default: false"
    trace_range: "(trace range analysis)\\ntype: bool  default: false"
    trace_gvn: "(trace global value numbering)\\ntype: bool  default: false"
    trace_representation: "(trace representation types)\\ntype: bool  default: false"
    stress_pointer_maps: "(pointer map for every instruction)\\ntype: bool  default: false"
    stress_environments: "(environment for every instruction)\\ntype: bool  default: false"
    deopt_every_n_times: "(deoptimize every n times a deopt point is passed)\\ntype: int  default: 0"
    trap_on_deopt: "(put a break point before deoptimizing)\\ntype: bool  default: false"
    de_optimize_uncommon_cases: "(deoptimize uncommon cases)\\ntype: bool  default: true"
    polymorphic_inlining: "(polymorphic inlining)\\ntype: bool  default: true"
    use_osr: "(use on-stack replacement)\\ntype: bool  default: true"
    array_bounds_checks_elimination: "(perform array bounds checks elimination)\\ntype: bool  default: true"
    array_index_de_hoisting: "(perform array index dehoisting)\\ntype: bool  default: true"
    dead_code_elimination: "(use dead code elimination)\\ntype: bool  default: true"
    trace_dead_code_elimination: "(trace dead code elimination)\\ntype: bool  default: false"
    track_allocation_sites: "(Use allocation site info to reduce transitions)\\ntype: bool  default: true"
    trace_osr: "(trace on-stack replacement)\\ntype: bool  default: false"
    stress_runs: "(number of stress runs)\\ntype: int  default: 0"
    optimize_closures: "(optimize closures)\\ntype: bool  default: true"
    lookup_sample_by_shared: "(when picking a function to optimize, watch for shared function info, not JSFunction itself)\\ntype: bool  default: true"
    cache_optimized_code: "(cache optimized code for closures)\\ntype: bool  default: true"
    inline_construct: "(inline constructor calls)\\ntype: bool  default: true"
    inline_arguments: "(inline functions with arguments object)\\ntype: bool  default: true"
    inline_accessors: "(inline JavaScript accessors)\\ntype: bool  default: true"
    loop_weight: "(loop weight for representation inference)\\ntype: int  default: 1"
    optimize_for_in: "(optimize functions containing for-in loops)\\ntype: bool  default: true"
    opt_safe_uint_three_two_operations: "(allow uint32 values on optimize frames if they are used only in safe operations)\\ntype: bool  default: true"
    parallel_recompilation: "(optimizing hot functions asynchronously on a separate thread)\\ntype: bool  default: false"
    trace_parallel_recompilation: "(track parallel recompilation)\\ntype: bool  default: false"
    parallel_recompilation_queue_length: "(the length of the parallel compilation queue)\\ntype: int  default: 2"
    manual_parallel_recompilation: "(disable automatic optimization)\\ntype: bool  default: false"
    experimental_profiler: "(enable all profiler experiments)\\ntype: bool  default: true"
    watch_ic_patching: "(profiler considers IC stability)\\ntype: bool  default: false"
    frame_count: "(number of stack frames inspected by the profiler)\\ntype: int  default: 1"
    self_optimization: "(primitive functions trigger their own optimization)\\ntype: bool  default: false"
    direct_self_opt: "(call recompile stub directly when self-optimizing)\\ntype: bool  default: false"
    retry_self_opt: "(re-try self-optimization if it failed)\\ntype: bool  default: false"
    interrupt_at_exit: "(insert an interrupt check at function exit)\\ntype: bool  default: false"
    weighted_back_edges: "(weight back edges by jump distance for interrupt triggering)\\ntype: bool  default: false"
    interrupt_budget: "(execution budget before interrupt is triggered)\\ntype: int  default: 5888"
    type_info_threshold: "(percentage of ICs that must have type info to allow optimization)\\ntype: int  default: 15"
    self_opt_count: "(call count before self-optimization)\\ntype: int  default: 130"
    trace_opt_verbose: "(extra verbose compilation tracing)\\ntype: bool  default: false"
    debug_code: "(generate extra code (assertions) for debugging)\\ntype: bool  default: false"
    code_comments: "(emit comments in code disassembly)\\ntype: bool  default: false"
    enable_sse_two: "(enable use of SSE2 instructions if available)\\ntype: bool  default: true"
    enable_sse_three: "(enable use of SSE3 instructions if available)\\ntype: bool  default: true"
    enable_sse_four_one: "(enable use of SSE4.1 instructions if available)\\ntype: bool  default: true"
    enable_cmov: "(enable use of CMOV instruction if available)\\ntype: bool  default: true"
    enable_r_dtsc: "(enable use of RDTSC instruction if available)\\ntype: bool  default: true"
    enable_sa_hf: "(enable use of SAHF instruction if available (X64 only))\\ntype: bool  default: true"
    enable_vfp_three: "(enable use of VFP3 instructions if available - this implies enabling ARMv7 and VFP2 instructions (ARM only))\\ntype: bool  default: true"
    enable_vfp_two: "(enable use of VFP2 instructions if available)\\ntype: bool  default: true"
    enable_arm_vs_even: "(enable use of ARMv7 instructions if available (ARM only))\\ntype: bool  default: true"
    enable_su_div: "(enable use of SDIV and UDIV instructions if available (ARM only))\\ntype: bool  default: true"
    enable_movw_movt: "(enable loading 32-bit constant by means of movw/movt instruction pairs (ARM only))\\ntype: bool  default: false"
    enable_unaligned_accesses: "(enable unaligned accesses for ARMv7 (ARM only))\\ntype: bool  default: true"
    enable_fpu: "(enable use of MIPS FPU instructions if available (MIPS only))\\ntype: bool  default: true"
    enable_vl_dr_imm: "(enable use of constant pools for double immediate (ARM only))\\ntype: bool  default: false"
    expose_natives_as: "(expose natives in global object)\\ntype: string  default: NULL"
    expose_debug_as: "(expose debug in global object)\\ntype: string  default: NULL"
    expose_gc: "(expose gc extension)\\ntype: bool  default: false"
    expose_externalize_string: "(expose externalize string extension)\\ntype: bool  default: false"
    stack_trace_limit: "(number of stack frames to capture)\\ntype: int  default: 10"
    builtins_in_stack_traces: "(show built-in functions in stack traces)\\ntype: bool  default: false"
    disable_native_files: "(disable builtin natives files)\\ntype: bool  default: false"
    inline_new: "(use fast inline allocation)\\ntype: bool  default: true"
    stack_trace_on_abort: "(print a stack trace if an assertion failure occurs)\\ntype: bool  default: true"
    trace: "(trace function calls)\\ntype: bool  default: false"
    mask_constants_with_cookie: "(use random jit cookie to mask large constants)\\ntype: bool  default: true"
    lazy: "(use lazy compilation)\\ntype: bool  default: true"
    trace_opt: "(trace lazy optimization)\\ntype: bool  default: false"
    trace_opt_stats: "(trace lazy optimization statistics)\\ntype: bool  default: false"
    opt: "(use adaptive optimizations)\\ntype: bool  default: true"
    always_opt: "(always try to optimize functions)\\ntype: bool  default: false"
    prepare_always_opt: "(prepare for turning on always opt)\\ntype: bool  default: false"
    trace_deopt: "(trace deoptimization)\\ntype: bool  default: false"
    min_pre_parse_length: "(minimum length for automatic enable preparsing)\\ntype: int  default: 1024"
    always_full_compiler: "(try to use the dedicated run-once backend for all code)\\ntype: bool  default: false"
    max_opt_count: "(maximum number of optimization attempts before giving up.)\\ntype: int  default: 10"
    compilation_cache: "(enable compilation cache)\\ntype: bool  default: true"
    cache_prototype_transitions: "(cache prototype transitions)\\ntype: bool  default: true"
    trace_debug_json: "(trace debugging JSON request/response)\\ntype: bool  default: false"
    debugger_auto_break: "(automatically set the debug break flag when debugger commands are in the queue)\\ntype: bool  default: true"
    enable_live_edit: "(enable liveedit experimental feature)\\ntype: bool  default: true"
    break_on_abort: "(always cause a debug break before aborting)\\ntype: bool  default: true"
    stack_size: "(default size of stack region v8 is allowed to use (in kBytes))\\ntype: int  default: 984"
    max_stack_trace_source_length: "(maximum length of function source code printed in a stack trace.)\\ntype: int  default: 300"
    always_inline_smi_code: "(always inline smi code in non-opt code)\\ntype: bool  default: false"
    max_new_space_size: "(max size of the new generation (in kBytes))\\ntype: int  default: 0"
    max_old_space_size: "(max size of the old generation (in Mbytes))\\ntype: int  default: 0"
    max_executable_size: "(max size of executable memory (in Mbytes))\\ntype: int  default: 0"
    gc_global: "(always perform global GCs)\\ntype: bool  default: false"
    gc_interval: "(garbage collect after <n> allocations)\\ntype: int  default: -1"
    trace_gc: "(print one trace line following each garbage collection)\\ntype: bool  default: false"
    trace_gc_nvp: "(print one detailed trace line in name=value format after each garbage collection)\\ntype: bool  default: false"
    trace_gc_ignore_scavenger: "(do not print trace line after scavenger collection)\\ntype: bool  default: false"
    print_cumulative_gc_stat: "(print cumulative GC statistics in name=value format on exit)\\ntype: bool  default: false"
    trace_gc_verbose: "(print more details following each garbage collection)\\ntype: bool  default: false"
    trace_fragmentation: "(report fragmentation for old pointer and data pages)\\ntype: bool  default: false"
    trace_external_memory: "(print amount of external allocated memory after each time it is adjusted.)\\ntype: bool  default: false"
    collect_maps: "(garbage collect maps from which no objects can be reached)\\ntype: bool  default: true"
    flush_code: "(flush code that we expect not to use again (during full gc))\\ntype: bool  default: true"
    flush_code_incrementally: "(flush code that we expect not to use again (incrementally))\\ntype: bool  default: true"
    age_code: "(track un-executed functions to age code and flush only old code)\\ntype: bool  default: true"
    incremental_marking: "(use incremental marking)\\ntype: bool  default: true"
    incremental_marking_steps: "(do incremental marking steps)\\ntype: bool  default: true"
    trace_incremental_marking: "(trace progress of the incremental marking)\\ntype: bool  default: false"
    track_gc_object_stats: "(track object counts and memory usage)\\ntype: bool  default: false"
    use_idle_notification: "(Use idle notification to reduce memory footprint.)\\ntype: bool  default: true"
    use_ic: "(use inline caching)\\ntype: bool  default: true"
    native_code_counters: "(generate extra code for manipulating stats counters)\\ntype: bool  default: false"
    always_compact: "(Perform compaction on every full GC)\\ntype: bool  default: false"
    lazy_sweeping: "(Use lazy sweeping for old pointer and data spaces)\\ntype: bool  default: true"
    never_compact: "(Never perform compaction on full GC - testing only)\\ntype: bool  default: false"
    compact_code_space: "(Compact code space on full non-incremental collections)\\ntype: bool  default: true"
    incremental_code_compaction: "(Compact code space on full incremental collections)\\ntype: bool  default: true"
    cleanup_code_caches_at_gc: "(Flush inline caches prior to mark compact collection and flush code caches in maps during mark compact cycle.)\\ntype: bool  default: true"
    use_marking_progress_bar: "(Use a progress bar to scan large objects in increments when incremental marking is active.)\\ntype: bool  default: true"
    random_seed: "(Default seed for initializing random generator (0, the default, means to use system random).)\\ntype: int  default: 0"
    use_verbose_printer: "(allows verbose printing)\\ntype: bool  default: true"
    allow_natives_syntax: "(allow natives syntax)\\ntype: bool  default: false"
    trace_parse: "(trace parsing and preparsing)\\ntype: bool  default: false"
    trace_sim: "(Trace simulator execution)\\ntype: bool  default: false"
    check_i_cache: "(Check icache flushes in ARM and MIPS simulator)\\ntype: bool  default: false"
    stop_sim_at: "(Simulator stop after x number of instructions)\\ntype: int  default: 0"
    sim_stack_alignment: "(Stack alingment in bytes in simulator (4 or 8, 8 is default))\\ntype: int  default: 8"
    trace_exception: "(print stack trace when throwing exceptions)\\ntype: bool  default: false"
    pre_allocate_message_memory: "(preallocate some memory to build stack traces.)\\ntype: bool  default: false"
    randomize_hashes: "(randomize hashes to avoid predictable hash collisions (with snapshots this option cannot override the baked-in seed))\\ntype: bool  default: true"
    hash_seed: "(Fixed seed to use to hash property keys (0 means random)(with snapshots this option cannot override the baked-in seed))\\ntype: int  default: 0"
    preemption: "(activate a 100ms timer that switches between V8 threads)\\ntype: bool  default: false"
    regexp_optimization: "(generate optimized regexp code)\\ntype: bool  default: true"
    testing_bool_flag: "(testing_bool_flag)\\ntype: bool  default: true"
    testing_int_flag: "(testing_int_flag)\\ntype: int  default: 13"
    testing_float_flag: "(float-flag)\\ntype: float  default: 2.500000"
    testing_string_flag: "(string-flag)\\ntype: string  default: Hello, world!"
    testing_prng_seed: "(Seed used for threading test randomness)\\ntype: int  default: 42"
    testing_serialization_file: "(file in which to serialize heap)\\ntype: string  default: /tmp/serdes"
    extra_code: "(A filename with extra code to be included in the snapshot (mksnapshot only))\\ntype: string  default: NULL"
    dump_counters: "(Dump counters on exit)\\ntype: bool  default: false"
    debugger: "(Enable JavaScript debugger)\\ntype: bool  default: false"
    remote_debugger: "(Connect JavaScript debugger to the debugger agent in another process)\\ntype: bool  default: false"
    debugger_agent: "(Enable debugger agent)\\ntype: bool  default: false"
    debugger_port: "(Port to use for remote debugging)\\ntype: int  default: 5858"
    map_counters: "(Map counters to a file)\\ntype: string  default:"
    js_arguments: "(Pass all remaining arguments to the script. Alias for \\\"--\\\".)\\ntype: arguments  default:"
    debug_compile_events: "(Enable debugger compile events)\\ntype: bool  default: true"
    debug_script_collected_events: "(Enable debugger script collected events)\\ntype: bool  default: true"
    gdb_jit: "(enable GDBJIT interface (disables compacting GC))\\ntype: bool  default: false"
    gdb_jit_full: "(enable GDBJIT interface for all code objects)\\ntype: bool  default: false"
    gdb_jit_dump: "(dump elf objects with debug info to disk)\\ntype: bool  default: false"
    gdb_jit_dump_filter: "(dump only objects containing this substring)\\ntype: string  default:"
    force_marking_de_que_overflows: "(force overflows of marking deque by reducing it's size to 64 words)\\ntype: bool  default: false"
    stress_compaction: "(stress the GC compactor to flush out bugs (implies --force_marking_deque_overflows))\\ntype: bool  default: false"
    log: "(Minimal logging (no API, code, GC, suspect, or handles samples).)\\ntype: bool  default: false"
    log_all: "(Log all events to the log file.)\\ntype: bool  default: false"
    log_runtime: "(Activate runtime system %Log call.)\\ntype: bool  default: false"
    log_api: "(Log API events to the log file.)\\ntype: bool  default: false"
    log_code: "(Log code events to the log file without profiling.)\\ntype: bool  default: false"
    log_gc: "(Log heap samples on garbage collection for the hp2ps tool.)\\ntype: bool  default: false"
    log_handles: "(Log global handle events.)\\ntype: bool  default: false"
    log_snapshot_positions: "(log positions of (de)serialized objects in the snapshot.)\\ntype: bool  default: false"
    log_suspect: "(Log suspect operations.)\\ntype: bool  default: false"
    prof: "(Log statistical profiling information (implies --log-code).)\\ntype: bool  default: false"
    prof_auto: "(Used with --prof, starts profiling automatically)\\ntype: bool  default: true"
    prof_lazy: "(Used with --prof, only does sampling and logging when profiler is active (implies --noprof_auto).)\\ntype: bool  default: false"
    prof_browser_mode: "(Used with --prof, turns on browser-compatible mode for profiling.)\\ntype: bool  default: true"
    log_regexp: "(Log regular expression execution.)\\ntype: bool  default: false"
    log_file: "(Specify the name of the log file.)\\ntype: string  default: v8.log"
    ll_prof: "(Enable low-level linux profiler.)\\ntype: bool  default: false"
    gc_fake_mmap: "(Specify the name of the file for fake gc mmap used in ll_prof)\\ntype: string  default: /tmp/__v8_gc__"
    log_internal_timer_events: "(Time internal events.)\\ntype: bool  default: false"
    log_timer_events: "(Time events including external callbacks.)\\ntype: bool  default: false\\n"
    var_207: ""
    e: ""
    d_eight: ""
    var_210: ""
    file_k: ""
  }
  output {
    File out_stdout = stdout()
  }
}
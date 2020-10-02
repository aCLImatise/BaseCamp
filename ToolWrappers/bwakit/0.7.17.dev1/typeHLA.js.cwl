class: CommandLineTool
id: typeHLA.js.cwl
inputs:
- id: in_use_strict
  doc: "(enforce strict mode)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --use_strict
- id: in_es_five_readonly
  doc: "(activate correct semantics for inheriting readonliness)\ntype: bool  default:\
    \ true"
  type: boolean
  inputBinding:
    prefix: --es5_readonly
- id: in_es_five_two_globals
  doc: "(activate new semantics for global var declarations)\ntype: bool  default:\
    \ true"
  type: boolean
  inputBinding:
    prefix: --es52_globals
- id: in_harmony_type_of
  doc: "(enable harmony semantics for typeof)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --harmony_typeof
- id: in_harmony_scoping
  doc: "(enable harmony block scoping)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --harmony_scoping
- id: in_harmony_modules
  doc: "(enable harmony modules (implies block scoping))\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --harmony_modules
- id: in_harmony_proxies
  doc: "(enable harmony proxies)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --harmony_proxies
- id: in_harmony_collections
  doc: "(enable harmony collections (sets, maps, and weak maps))\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --harmony_collections
- id: in_harmony_observation
  doc: "(enable harmony object observation (implies harmony collections)\ntype: bool\
    \  default: false"
  type: boolean
  inputBinding:
    prefix: --harmony_observation
- id: in_harmony
  doc: "(enable all harmony features (except typeof))\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --harmony
- id: in_packed_arrays
  doc: "(optimizes arrays that have no holes)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --packed_arrays
- id: in_smi_only_arrays
  doc: "(tracks arrays with only smi values)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --smi_only_arrays
- id: in_clever_optimizations
  doc: "(Optimize object size, Array shift, DOM strings and string +)\ntype: bool\
    \  default: true"
  type: boolean
  inputBinding:
    prefix: --clever_optimizations
- id: in_unbox_double_arrays
  doc: "(automatically unbox arrays of doubles)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --unbox_double_arrays
- id: in_string_slices
  doc: "(use string slices)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --string_slices
- id: in_crankshaft
  doc: "(use crankshaft)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --crankshaft
- id: in_hydrogen_filter
  doc: "(optimization filter)\ntype: string  default:"
  type: boolean
  inputBinding:
    prefix: --hydrogen_filter
- id: in_use_range
  doc: "(use hydrogen range analysis)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --use_range
- id: in_eliminate_dead_p_his
  doc: "(eliminate dead phis)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --eliminate_dead_phis
- id: in_use_gvn
  doc: "(use hydrogen global value numbering)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --use_gvn
- id: in_use_canonical_izing
  doc: "(use hydrogen instruction canonicalizing)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --use_canonicalizing
- id: in_use_inlining
  doc: "(use function inlining)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --use_inlining
- id: in_max_inlined_source_size
  doc: "(maximum source size in bytes considered for a single inlining)\ntype: int\
    \  default: 600"
  type: boolean
  inputBinding:
    prefix: --max_inlined_source_size
- id: in_max_inlined_nodes
  doc: "(maximum number of AST nodes considered for a single inlining)\ntype: int\
    \  default: 196"
  type: boolean
  inputBinding:
    prefix: --max_inlined_nodes
- id: in_max_inlined_nodes_cumulative
  doc: "(maximum cumulative number of AST nodes considered for inlining)\ntype: int\
    \  default: 196"
  type: boolean
  inputBinding:
    prefix: --max_inlined_nodes_cumulative
- id: in_loop_invariant_code_motion
  doc: "(loop invariant code motion)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --loop_invariant_code_motion
- id: in_fast_math
  doc: "(faster (but maybe less accurate) math functions)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --fast_math
- id: in_collect_mega_morphic_maps_from_stub_cache
  doc: "(crankshaft harvests type feedback from stub cache)\ntype: bool  default:\
    \ true"
  type: boolean
  inputBinding:
    prefix: --collect_megamorphic_maps_from_stub_cache
- id: in_hydrogen_stats
  doc: "(print statistics for hydrogen)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --hydrogen_stats
- id: in_trace_hydrogen
  doc: "(trace generated hydrogen to file)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_hydrogen
- id: in_trace_phase
  doc: "(trace generated IR for specified phases)\ntype: string  default: Z"
  type: boolean
  inputBinding:
    prefix: --trace_phase
- id: in_trace_inlining
  doc: "(trace inlining decisions)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_inlining
- id: in_trace_alloc
  doc: "(trace register allocator)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_alloc
- id: in_trace_all_uses
  doc: "(trace all use positions)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_all_uses
- id: in_trace_range
  doc: "(trace range analysis)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_range
- id: in_trace_gvn
  doc: "(trace global value numbering)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_gvn
- id: in_trace_representation
  doc: "(trace representation types)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_representation
- id: in_stress_pointer_maps
  doc: "(pointer map for every instruction)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --stress_pointer_maps
- id: in_stress_environments
  doc: "(environment for every instruction)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --stress_environments
- id: in_deopt_every_n_times
  doc: "(deoptimize every n times a deopt point is passed)\ntype: int  default: 0"
  type: boolean
  inputBinding:
    prefix: --deopt_every_n_times
- id: in_trap_on_deopt
  doc: "(put a break point before deoptimizing)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trap_on_deopt
- id: in_de_optimize_uncommon_cases
  doc: "(deoptimize uncommon cases)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --deoptimize_uncommon_cases
- id: in_polymorphic_inlining
  doc: "(polymorphic inlining)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --polymorphic_inlining
- id: in_use_osr
  doc: "(use on-stack replacement)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --use_osr
- id: in_array_bounds_checks_elimination
  doc: "(perform array bounds checks elimination)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --array_bounds_checks_elimination
- id: in_array_index_de_hoisting
  doc: "(perform array index dehoisting)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --array_index_dehoisting
- id: in_dead_code_elimination
  doc: "(use dead code elimination)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --dead_code_elimination
- id: in_trace_dead_code_elimination
  doc: "(trace dead code elimination)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_dead_code_elimination
- id: in_track_allocation_sites
  doc: "(Use allocation site info to reduce transitions)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --track_allocation_sites
- id: in_trace_osr
  doc: "(trace on-stack replacement)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_osr
- id: in_stress_runs
  doc: "(number of stress runs)\ntype: int  default: 0"
  type: boolean
  inputBinding:
    prefix: --stress_runs
- id: in_optimize_closures
  doc: "(optimize closures)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --optimize_closures
- id: in_lookup_sample_by_shared
  doc: "(when picking a function to optimize, watch for shared function info, not\
    \ JSFunction itself)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --lookup_sample_by_shared
- id: in_cache_optimized_code
  doc: "(cache optimized code for closures)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --cache_optimized_code
- id: in_inline_construct
  doc: "(inline constructor calls)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --inline_construct
- id: in_inline_arguments
  doc: "(inline functions with arguments object)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --inline_arguments
- id: in_inline_accessors
  doc: "(inline JavaScript accessors)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --inline_accessors
- id: in_loop_weight
  doc: "(loop weight for representation inference)\ntype: int  default: 1"
  type: boolean
  inputBinding:
    prefix: --loop_weight
- id: in_optimize_for_in
  doc: "(optimize functions containing for-in loops)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --optimize_for_in
- id: in_opt_safe_uint_three_two_operations
  doc: "(allow uint32 values on optimize frames if they are used only in safe operations)\n\
    type: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --opt_safe_uint32_operations
- id: in_parallel_recompilation
  doc: "(optimizing hot functions asynchronously on a separate thread)\ntype: bool\
    \  default: false"
  type: boolean
  inputBinding:
    prefix: --parallel_recompilation
- id: in_trace_parallel_recompilation
  doc: "(track parallel recompilation)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_parallel_recompilation
- id: in_parallel_recompilation_queue_length
  doc: "(the length of the parallel compilation queue)\ntype: int  default: 2"
  type: boolean
  inputBinding:
    prefix: --parallel_recompilation_queue_length
- id: in_manual_parallel_recompilation
  doc: "(disable automatic optimization)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --manual_parallel_recompilation
- id: in_experimental_profiler
  doc: "(enable all profiler experiments)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --experimental_profiler
- id: in_watch_ic_patching
  doc: "(profiler considers IC stability)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --watch_ic_patching
- id: in_frame_count
  doc: "(number of stack frames inspected by the profiler)\ntype: int  default: 1"
  type: boolean
  inputBinding:
    prefix: --frame_count
- id: in_self_optimization
  doc: "(primitive functions trigger their own optimization)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --self_optimization
- id: in_direct_self_opt
  doc: "(call recompile stub directly when self-optimizing)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --direct_self_opt
- id: in_retry_self_opt
  doc: "(re-try self-optimization if it failed)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --retry_self_opt
- id: in_interrupt_at_exit
  doc: "(insert an interrupt check at function exit)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --interrupt_at_exit
- id: in_weighted_back_edges
  doc: "(weight back edges by jump distance for interrupt triggering)\ntype: bool\
    \  default: false"
  type: boolean
  inputBinding:
    prefix: --weighted_back_edges
- id: in_interrupt_budget
  doc: "(execution budget before interrupt is triggered)\ntype: int  default: 5888"
  type: boolean
  inputBinding:
    prefix: --interrupt_budget
- id: in_type_info_threshold
  doc: "(percentage of ICs that must have type info to allow optimization)\ntype:\
    \ int  default: 15"
  type: boolean
  inputBinding:
    prefix: --type_info_threshold
- id: in_self_opt_count
  doc: "(call count before self-optimization)\ntype: int  default: 130"
  type: boolean
  inputBinding:
    prefix: --self_opt_count
- id: in_trace_opt_verbose
  doc: "(extra verbose compilation tracing)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_opt_verbose
- id: in_debug_code
  doc: "(generate extra code (assertions) for debugging)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --debug_code
- id: in_code_comments
  doc: "(emit comments in code disassembly)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --code_comments
- id: in_enable_sse_two
  doc: "(enable use of SSE2 instructions if available)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --enable_sse2
- id: in_enable_sse_three
  doc: "(enable use of SSE3 instructions if available)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --enable_sse3
- id: in_enable_sse_four_one
  doc: "(enable use of SSE4.1 instructions if available)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --enable_sse4_1
- id: in_enable_cmov
  doc: "(enable use of CMOV instruction if available)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --enable_cmov
- id: in_enable_r_dtsc
  doc: "(enable use of RDTSC instruction if available)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --enable_rdtsc
- id: in_enable_sa_hf
  doc: "(enable use of SAHF instruction if available (X64 only))\ntype: bool  default:\
    \ true"
  type: boolean
  inputBinding:
    prefix: --enable_sahf
- id: in_enable_vfp_three
  doc: "(enable use of VFP3 instructions if available - this implies enabling ARMv7\
    \ and VFP2 instructions (ARM only))\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --enable_vfp3
- id: in_enable_vfp_two
  doc: "(enable use of VFP2 instructions if available)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --enable_vfp2
- id: in_enable_arm_vs_even
  doc: "(enable use of ARMv7 instructions if available (ARM only))\ntype: bool  default:\
    \ true"
  type: boolean
  inputBinding:
    prefix: --enable_armv7
- id: in_enable_su_div
  doc: "(enable use of SDIV and UDIV instructions if available (ARM only))\ntype:\
    \ bool  default: true"
  type: boolean
  inputBinding:
    prefix: --enable_sudiv
- id: in_enable_movw_movt
  doc: "(enable loading 32-bit constant by means of movw/movt instruction pairs (ARM\
    \ only))\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --enable_movw_movt
- id: in_enable_unaligned_accesses
  doc: "(enable unaligned accesses for ARMv7 (ARM only))\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --enable_unaligned_accesses
- id: in_enable_fpu
  doc: "(enable use of MIPS FPU instructions if available (MIPS only))\ntype: bool\
    \  default: true"
  type: boolean
  inputBinding:
    prefix: --enable_fpu
- id: in_enable_vl_dr_imm
  doc: "(enable use of constant pools for double immediate (ARM only))\ntype: bool\
    \  default: false"
  type: boolean
  inputBinding:
    prefix: --enable_vldr_imm
- id: in_expose_natives_as
  doc: "(expose natives in global object)\ntype: string  default: NULL"
  type: boolean
  inputBinding:
    prefix: --expose_natives_as
- id: in_expose_debug_as
  doc: "(expose debug in global object)\ntype: string  default: NULL"
  type: boolean
  inputBinding:
    prefix: --expose_debug_as
- id: in_expose_gc
  doc: "(expose gc extension)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --expose_gc
- id: in_expose_externalize_string
  doc: "(expose externalize string extension)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --expose_externalize_string
- id: in_stack_trace_limit
  doc: "(number of stack frames to capture)\ntype: int  default: 10"
  type: boolean
  inputBinding:
    prefix: --stack_trace_limit
- id: in_builtins_in_stack_traces
  doc: "(show built-in functions in stack traces)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --builtins_in_stack_traces
- id: in_disable_native_files
  doc: "(disable builtin natives files)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --disable_native_files
- id: in_inline_new
  doc: "(use fast inline allocation)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --inline_new
- id: in_stack_trace_on_abort
  doc: "(print a stack trace if an assertion failure occurs)\ntype: bool  default:\
    \ true"
  type: boolean
  inputBinding:
    prefix: --stack_trace_on_abort
- id: in_trace
  doc: "(trace function calls)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace
- id: in_mask_constants_with_cookie
  doc: "(use random jit cookie to mask large constants)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --mask_constants_with_cookie
- id: in_lazy
  doc: "(use lazy compilation)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --lazy
- id: in_trace_opt
  doc: "(trace lazy optimization)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_opt
- id: in_trace_opt_stats
  doc: "(trace lazy optimization statistics)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_opt_stats
- id: in_opt
  doc: "(use adaptive optimizations)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --opt
- id: in_always_opt
  doc: "(always try to optimize functions)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --always_opt
- id: in_prepare_always_opt
  doc: "(prepare for turning on always opt)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --prepare_always_opt
- id: in_trace_deopt
  doc: "(trace deoptimization)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_deopt
- id: in_min_pre_parse_length
  doc: "(minimum length for automatic enable preparsing)\ntype: int  default: 1024"
  type: boolean
  inputBinding:
    prefix: --min_preparse_length
- id: in_always_full_compiler
  doc: "(try to use the dedicated run-once backend for all code)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --always_full_compiler
- id: in_max_opt_count
  doc: "(maximum number of optimization attempts before giving up.)\ntype: int  default:\
    \ 10"
  type: boolean
  inputBinding:
    prefix: --max_opt_count
- id: in_compilation_cache
  doc: "(enable compilation cache)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --compilation_cache
- id: in_cache_prototype_transitions
  doc: "(cache prototype transitions)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --cache_prototype_transitions
- id: in_trace_debug_json
  doc: "(trace debugging JSON request/response)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_debug_json
- id: in_debugger_auto_break
  doc: "(automatically set the debug break flag when debugger commands are in the\
    \ queue)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --debugger_auto_break
- id: in_enable_live_edit
  doc: "(enable liveedit experimental feature)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --enable_liveedit
- id: in_break_on_abort
  doc: "(always cause a debug break before aborting)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --break_on_abort
- id: in_stack_size
  doc: "(default size of stack region v8 is allowed to use (in kBytes))\ntype: int\
    \  default: 984"
  type: boolean
  inputBinding:
    prefix: --stack_size
- id: in_max_stack_trace_source_length
  doc: "(maximum length of function source code printed in a stack trace.)\ntype:\
    \ int  default: 300"
  type: boolean
  inputBinding:
    prefix: --max_stack_trace_source_length
- id: in_always_inline_smi_code
  doc: "(always inline smi code in non-opt code)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --always_inline_smi_code
- id: in_max_new_space_size
  doc: "(max size of the new generation (in kBytes))\ntype: int  default: 0"
  type: boolean
  inputBinding:
    prefix: --max_new_space_size
- id: in_max_old_space_size
  doc: "(max size of the old generation (in Mbytes))\ntype: int  default: 0"
  type: boolean
  inputBinding:
    prefix: --max_old_space_size
- id: in_max_executable_size
  doc: "(max size of executable memory (in Mbytes))\ntype: int  default: 0"
  type: boolean
  inputBinding:
    prefix: --max_executable_size
- id: in_gc_global
  doc: "(always perform global GCs)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --gc_global
- id: in_gc_interval
  doc: "(garbage collect after <n> allocations)\ntype: int  default: -1"
  type: boolean
  inputBinding:
    prefix: --gc_interval
- id: in_trace_gc
  doc: "(print one trace line following each garbage collection)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --trace_gc
- id: in_trace_gc_nvp
  doc: "(print one detailed trace line in name=value format after each garbage collection)\n\
    type: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_gc_nvp
- id: in_trace_gc_ignore_scavenger
  doc: "(do not print trace line after scavenger collection)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --trace_gc_ignore_scavenger
- id: in_print_cumulative_gc_stat
  doc: "(print cumulative GC statistics in name=value format on exit)\ntype: bool\
    \  default: false"
  type: boolean
  inputBinding:
    prefix: --print_cumulative_gc_stat
- id: in_trace_gc_verbose
  doc: "(print more details following each garbage collection)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --trace_gc_verbose
- id: in_trace_fragmentation
  doc: "(report fragmentation for old pointer and data pages)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --trace_fragmentation
- id: in_trace_external_memory
  doc: "(print amount of external allocated memory after each time it is adjusted.)\n\
    type: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_external_memory
- id: in_collect_maps
  doc: "(garbage collect maps from which no objects can be reached)\ntype: bool  default:\
    \ true"
  type: boolean
  inputBinding:
    prefix: --collect_maps
- id: in_flush_code
  doc: "(flush code that we expect not to use again (during full gc))\ntype: bool\
    \  default: true"
  type: boolean
  inputBinding:
    prefix: --flush_code
- id: in_flush_code_incrementally
  doc: "(flush code that we expect not to use again (incrementally))\ntype: bool \
    \ default: true"
  type: boolean
  inputBinding:
    prefix: --flush_code_incrementally
- id: in_age_code
  doc: "(track un-executed functions to age code and flush only old code)\ntype: bool\
    \  default: true"
  type: boolean
  inputBinding:
    prefix: --age_code
- id: in_incremental_marking
  doc: "(use incremental marking)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --incremental_marking
- id: in_incremental_marking_steps
  doc: "(do incremental marking steps)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --incremental_marking_steps
- id: in_trace_incremental_marking
  doc: "(trace progress of the incremental marking)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_incremental_marking
- id: in_track_gc_object_stats
  doc: "(track object counts and memory usage)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --track_gc_object_stats
- id: in_use_idle_notification
  doc: "(Use idle notification to reduce memory footprint.)\ntype: bool  default:\
    \ true"
  type: boolean
  inputBinding:
    prefix: --use_idle_notification
- id: in_use_ic
  doc: "(use inline caching)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --use_ic
- id: in_native_code_counters
  doc: "(generate extra code for manipulating stats counters)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --native_code_counters
- id: in_always_compact
  doc: "(Perform compaction on every full GC)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --always_compact
- id: in_lazy_sweeping
  doc: "(Use lazy sweeping for old pointer and data spaces)\ntype: bool  default:\
    \ true"
  type: boolean
  inputBinding:
    prefix: --lazy_sweeping
- id: in_never_compact
  doc: "(Never perform compaction on full GC - testing only)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --never_compact
- id: in_compact_code_space
  doc: "(Compact code space on full non-incremental collections)\ntype: bool  default:\
    \ true"
  type: boolean
  inputBinding:
    prefix: --compact_code_space
- id: in_incremental_code_compaction
  doc: "(Compact code space on full incremental collections)\ntype: bool  default:\
    \ true"
  type: boolean
  inputBinding:
    prefix: --incremental_code_compaction
- id: in_cleanup_code_caches_at_gc
  doc: "(Flush inline caches prior to mark compact collection and flush code caches\
    \ in maps during mark compact cycle.)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --cleanup_code_caches_at_gc
- id: in_use_marking_progress_bar
  doc: "(Use a progress bar to scan large objects in increments when incremental marking\
    \ is active.)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --use_marking_progress_bar
- id: in_random_seed
  doc: "(Default seed for initializing random generator (0, the default, means to\
    \ use system random).)\ntype: int  default: 0"
  type: boolean
  inputBinding:
    prefix: --random_seed
- id: in_use_verbose_printer
  doc: "(allows verbose printing)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --use_verbose_printer
- id: in_allow_natives_syntax
  doc: "(allow natives syntax)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --allow_natives_syntax
- id: in_trace_parse
  doc: "(trace parsing and preparsing)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_parse
- id: in_trace_sim
  doc: "(Trace simulator execution)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_sim
- id: in_check_i_cache
  doc: "(Check icache flushes in ARM and MIPS simulator)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --check_icache
- id: in_stop_sim_at
  doc: "(Simulator stop after x number of instructions)\ntype: int  default: 0"
  type: boolean
  inputBinding:
    prefix: --stop_sim_at
- id: in_sim_stack_alignment
  doc: "(Stack alingment in bytes in simulator (4 or 8, 8 is default))\ntype: int\
    \  default: 8"
  type: boolean
  inputBinding:
    prefix: --sim_stack_alignment
- id: in_trace_exception
  doc: "(print stack trace when throwing exceptions)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --trace_exception
- id: in_pre_allocate_message_memory
  doc: "(preallocate some memory to build stack traces.)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --preallocate_message_memory
- id: in_randomize_hashes
  doc: "(randomize hashes to avoid predictable hash collisions (with snapshots this\
    \ option cannot override the baked-in seed))\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --randomize_hashes
- id: in_hash_seed
  doc: "(Fixed seed to use to hash property keys (0 means random)(with snapshots this\
    \ option cannot override the baked-in seed))\ntype: int  default: 0"
  type: boolean
  inputBinding:
    prefix: --hash_seed
- id: in_preemption
  doc: "(activate a 100ms timer that switches between V8 threads)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --preemption
- id: in_regexp_optimization
  doc: "(generate optimized regexp code)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --regexp_optimization
- id: in_testing_bool_flag
  doc: "(testing_bool_flag)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --testing_bool_flag
- id: in_testing_int_flag
  doc: "(testing_int_flag)\ntype: int  default: 13"
  type: boolean
  inputBinding:
    prefix: --testing_int_flag
- id: in_testing_float_flag
  doc: "(float-flag)\ntype: float  default: 2.500000"
  type: boolean
  inputBinding:
    prefix: --testing_float_flag
- id: in_testing_string_flag
  doc: "(string-flag)\ntype: string  default: Hello, world!"
  type: boolean
  inputBinding:
    prefix: --testing_string_flag
- id: in_testing_prng_seed
  doc: "(Seed used for threading test randomness)\ntype: int  default: 42"
  type: boolean
  inputBinding:
    prefix: --testing_prng_seed
- id: in_testing_serialization_file
  doc: "(file in which to serialize heap)\ntype: string  default: /tmp/serdes"
  type: boolean
  inputBinding:
    prefix: --testing_serialization_file
- id: in_extra_code
  doc: "(A filename with extra code to be included in the snapshot (mksnapshot only))\n\
    type: string  default: NULL"
  type: boolean
  inputBinding:
    prefix: --extra_code
- id: in_dump_counters
  doc: "(Dump counters on exit)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --dump_counters
- id: in_debugger
  doc: "(Enable JavaScript debugger)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --debugger
- id: in_remote_debugger
  doc: "(Connect JavaScript debugger to the debugger agent in another process)\ntype:\
    \ bool  default: false"
  type: boolean
  inputBinding:
    prefix: --remote_debugger
- id: in_debugger_agent
  doc: "(Enable debugger agent)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --debugger_agent
- id: in_debugger_port
  doc: "(Port to use for remote debugging)\ntype: int  default: 5858"
  type: boolean
  inputBinding:
    prefix: --debugger_port
- id: in_map_counters
  doc: "(Map counters to a file)\ntype: string  default:"
  type: boolean
  inputBinding:
    prefix: --map_counters
- id: in_js_arguments
  doc: "(Pass all remaining arguments to the script. Alias for \"--\".)\ntype: arguments\
    \  default:"
  type: boolean
  inputBinding:
    prefix: --js_arguments
- id: in_debug_compile_events
  doc: "(Enable debugger compile events)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --debug_compile_events
- id: in_debug_script_collected_events
  doc: "(Enable debugger script collected events)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --debug_script_collected_events
- id: in_gdb_jit
  doc: "(enable GDBJIT interface (disables compacting GC))\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --gdbjit
- id: in_gdb_jit_full
  doc: "(enable GDBJIT interface for all code objects)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --gdbjit_full
- id: in_gdb_jit_dump
  doc: "(dump elf objects with debug info to disk)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --gdbjit_dump
- id: in_gdb_jit_dump_filter
  doc: "(dump only objects containing this substring)\ntype: string  default:"
  type: boolean
  inputBinding:
    prefix: --gdbjit_dump_filter
- id: in_force_marking_de_que_overflows
  doc: "(force overflows of marking deque by reducing it's size to 64 words)\ntype:\
    \ bool  default: false"
  type: boolean
  inputBinding:
    prefix: --force_marking_deque_overflows
- id: in_stress_compaction
  doc: "(stress the GC compactor to flush out bugs (implies --force_marking_deque_overflows))\n\
    type: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --stress_compaction
- id: in_log
  doc: "(Minimal logging (no API, code, GC, suspect, or handles samples).)\ntype:\
    \ bool  default: false"
  type: boolean
  inputBinding:
    prefix: --log
- id: in_log_all
  doc: "(Log all events to the log file.)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --log_all
- id: in_log_runtime
  doc: "(Activate runtime system %Log call.)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --log_runtime
- id: in_log_api
  doc: "(Log API events to the log file.)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --log_api
- id: in_log_code
  doc: "(Log code events to the log file without profiling.)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --log_code
- id: in_log_gc
  doc: "(Log heap samples on garbage collection for the hp2ps tool.)\ntype: bool \
    \ default: false"
  type: boolean
  inputBinding:
    prefix: --log_gc
- id: in_log_handles
  doc: "(Log global handle events.)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --log_handles
- id: in_log_snapshot_positions
  doc: "(log positions of (de)serialized objects in the snapshot.)\ntype: bool  default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --log_snapshot_positions
- id: in_log_suspect
  doc: "(Log suspect operations.)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --log_suspect
- id: in_prof
  doc: "(Log statistical profiling information (implies --log-code).)\ntype: bool\
    \  default: false"
  type: boolean
  inputBinding:
    prefix: --prof
- id: in_prof_auto
  doc: "(Used with --prof, starts profiling automatically)\ntype: bool  default: true"
  type: boolean
  inputBinding:
    prefix: --prof_auto
- id: in_prof_lazy
  doc: "(Used with --prof, only does sampling and logging when profiler is active\
    \ (implies --noprof_auto).)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --prof_lazy
- id: in_prof_browser_mode
  doc: "(Used with --prof, turns on browser-compatible mode for profiling.)\ntype:\
    \ bool  default: true"
  type: boolean
  inputBinding:
    prefix: --prof_browser_mode
- id: in_log_regexp
  doc: "(Log regular expression execution.)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --log_regexp
- id: in_log_file
  doc: "(Specify the name of the log file.)\ntype: string  default: v8.log"
  type: boolean
  inputBinding:
    prefix: --logfile
- id: in_ll_prof
  doc: "(Enable low-level linux profiler.)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --ll_prof
- id: in_gc_fake_mmap
  doc: "(Specify the name of the file for fake gc mmap used in ll_prof)\ntype: string\
    \  default: /tmp/__v8_gc__"
  type: boolean
  inputBinding:
    prefix: --gc_fake_mmap
- id: in_log_internal_timer_events
  doc: "(Time internal events.)\ntype: bool  default: false"
  type: boolean
  inputBinding:
    prefix: --log_internal_timer_events
- id: in_log_timer_events
  doc: "(Time events including external callbacks.)\ntype: bool  default: false\n"
  type: boolean
  inputBinding:
    prefix: --log_timer_events
- id: in_var_207
  doc: ''
  type: boolean
  inputBinding:
    prefix: --shell
- id: in_e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: in_d_eight
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_var_210
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_k
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- typeHLA.js

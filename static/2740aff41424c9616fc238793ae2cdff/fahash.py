from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Fahash_V0_1_0 = CommandToolBuilder(tool="fahash", base_command=["fahash"], inputs=[ToolInput(tag="in_print_word_usage", input_type=File(optional=True), prefix="-T", doc=InputDocumentation(doc="Print word usage statistics for hash-file")), ToolInput(tag="in_build_hash_tables", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="Build hash tables (hash-file) from sequence files,")), ToolInput(tag="in_set_word_size", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="Set word size when building hash tables")), ToolInput(tag="in_set_discontiguity_when", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Set discontiguity when building hash tables")), ToolInput(tag="in_skip_repeats_building", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Skip repeats when building hash-file")), ToolInput(tag="in_max_set_watermarks", input_type=Int(optional=True), prefix="-F", doc=InputDocumentation(doc=",max      Set watermarks for fragment size (in Mb) (version 1 only)")), ToolInput(tag="in_set_cache_size", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="Set cache size (version 2 only)")), ToolInput(tag="in_use_format_version", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Use format version (1|2, 2 is default)")), ToolInput(tag="in_write_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Write output to file `outfile'")), ToolInput(tag="in_hv", input_type=Boolean(optional=True), prefix="-hV", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_write_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_write_output_file", type_hint=File()), doc=OutputDocumentation(doc="Write output to file `outfile'"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fahash_V0_1_0().translate("wdl", allow_empty_container=True)


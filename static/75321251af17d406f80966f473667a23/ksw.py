from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Ksw_V0_1_0 = CommandToolBuilder(tool="ksw", base_command=["ksw"], inputs=[ToolInput(tag="in_alignment_mode_local", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="The alignment mode: 0 - local, 1 - glocal, 2 - extend, 3 - global [0 - local]")), ToolInput(tag="in_the_match_score", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="The match score (>0) [1]")), ToolInput(tag="in_the_mismatch_penalty", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="The mismatch penalty (>0) [3]")), ToolInput(tag="in_gap_open_penalty", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="The gap open penalty (>=0) [5]")), ToolInput(tag="in_gap_extend_penalty", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="The gap extend penalty (>0) [2]")), ToolInput(tag="in_band_width_ksw", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="The band width (ksw only) [536870911]")), ToolInput(tag="in_path_scoring_matrix", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="Path to the scoring matrix (4x4 or 5x5) [None]")), ToolInput(tag="in_append_cigar_output", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Append the cigar to the output [false]")), ToolInput(tag="in_append_query_target", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Append the query and target to the output [false]")), ToolInput(tag="in_add_header_line", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="Add a header line to the output [false]")), ToolInput(tag="in_gaps_ksw_only", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="Right-align gaps (ksw only)[false]")), ToolInput(tag="in_output_offsetandlength_otherwise", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="Output offset-and-length, otherwise start-and-end (all zero-based)[false]")), ToolInput(tag="in_library_type_auto", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="The library type: 0 - auto, 1 - ksw2, 2 - parasail [0 - auto]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ksw_V0_1_0().translate("wdl", allow_empty_container=True)


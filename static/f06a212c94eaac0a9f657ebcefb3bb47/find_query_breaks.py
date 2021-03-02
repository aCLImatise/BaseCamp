from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Find_Query_Breaks_V0_1_0 = CommandToolBuilder(tool="find_query_breaks", base_command=["find-query-breaks"], inputs=[ToolInput(tag="in_minimum_length_alignment", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Minimum length of alignment break to report (Default: 10)")), ToolInput(tag="in_minimum_distance_edge", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="Minimum distance to edge of reference sequence to report (Default: 0)")), ToolInput(tag="in_minimum_length_report", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Minimum length of query sequence to report (Default: 0)")), ToolInput(tag="in_flag_broken_alignments", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Flag broken alignments within this distance of reference")), ToolInput(tag="in_flag_adjacent_alignments", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Flag adjacent broken alignments from same query")), ToolInput(tag="in_only_show_collapses", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="Only show collapses")), ToolInput(tag="in_only_show_breaks", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="Only show alignment breaks")), ToolInput(tag="in_load_fix_regions", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Load fix regions from all.feat and mark if fixed in -B breakreport")), ToolInput(tag="in_display_breaks_amos", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Display breaks as AMOS features"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Query_Breaks_V0_1_0().translate("wdl", allow_empty_container=True)


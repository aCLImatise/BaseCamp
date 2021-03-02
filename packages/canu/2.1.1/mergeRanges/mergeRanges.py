from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Mergeranges_V0_1_0 = CommandToolBuilder(tool="mergeRanges", base_command=["mergeRanges"], inputs=[ToolInput(tag="in_path_sequence_store", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="Path to the sequence store")), ToolInput(tag="in_bgn_end_path", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="<bgn> <end>  Path to the file of clear ranges,\nalong with the (inclusive) range of\nread IDs that have clear ranges set")), ToolInput(tag="in_path_output_clear", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Path to output clear ranges.")), ToolInput(tag="in_report_clear_changes", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Report clear range changes to stderr")), ToolInput(tag="in_end_id", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_clear_range_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_path_output_clear", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_output_clear", type_hint=File()), doc=OutputDocumentation(doc="Path to output clear ranges."))], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergeranges_V0_1_0().translate("wdl")


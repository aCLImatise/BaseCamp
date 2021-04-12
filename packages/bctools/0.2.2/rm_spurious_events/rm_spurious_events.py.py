from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Boolean, String

Rm_Spurious_Events_Py_V0_1_0 = CommandToolBuilder(tool="rm_spurious_events.py", base_command=["rm_spurious_events.py"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Write results to this file. (default: None)")), ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Threshold for spurious event removal. (default: 0.1)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose. (default: False)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print lots of debugging information (default: False)")), ToolInput(tag="in_duplicates", input_type=String(), position=0, doc=InputDocumentation(doc="Output:")), ToolInput(tag="in_events", input_type=String(), position=0, doc=InputDocumentation(doc="Path to bed6 file containing alignments."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rm_Spurious_Events_Py_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Arrive2_V0_1_0 = CommandToolBuilder(tool="arrive2", base_command=["arrive2"], inputs=[ToolInput(tag="in_ignore_overlap_degrees", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Ignore 3' overlap degrees > <n>")), ToolInput(tag="in_read_length_info", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="Get read length info from file <fn>")), ToolInput(tag="in_ignore_reads_shorter", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="Ignore reads shorter than <n> bp")), ToolInput(tag="in_use_windows_m", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="-<n>  Use windows in the range <m> .. <n>  of reads")), ToolInput(tag="in_fit_minimizing_sum", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Fit by minimizing sum of squared errors instead of |error|")), ToolInput(tag="in_fit_minimizing_error", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Fit by minimizing max |error| instead of sum of |error|")), ToolInput(tag="in_ignore_reads_all", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="Ignore reads with no overlaps at all")), ToolInput(tag="in_lo", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hi", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_del", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrive2_V0_1_0().translate("wdl", allow_empty_container=True)


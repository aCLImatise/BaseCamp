from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Parallel_Delta_Filter_Sh_V0_1_0 = CommandToolBuilder(tool="parallel_delta_filter.sh", base_command=["parallel_delta-filter.sh"], inputs=[ToolInput(tag="in_print_first_n", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[-]N[kbm]    Print first N bytes")), ToolInput(tag="in_never_print_headers", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Never print headers")), ToolInput(tag="in_always_print_headers", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Always print headers")), ToolInput(tag="in_head", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parallel_Delta_Filter_Sh_V0_1_0().translate("wdl", allow_empty_container=True)


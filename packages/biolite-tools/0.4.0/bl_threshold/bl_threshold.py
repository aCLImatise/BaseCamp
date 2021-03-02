from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Bl_Threshold_V0_1_0 = CommandToolBuilder(tool="bl_threshold", base_command=["bl-threshold"], inputs=[ToolInput(tag="in_nonnegative_length", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="non-negative length")), ToolInput(tag="in_file_print_reads", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="file to print short reads to")), ToolInput(tag="in_threshold", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bl_Threshold_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Get_Captured_Reads_V0_1_0 = CommandToolBuilder(tool="get_captured_reads", base_command=["get_captured_reads"], inputs=[ToolInput(tag="in_baits", input_type=Boolean(optional=True), prefix="--baits", doc=InputDocumentation(doc="Baits format file")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="Specify number of header lines in the baits file (i.e. skip these)")), ToolInput(tag="in_interactions", input_type=Boolean(optional=True), prefix="--interactions", doc=InputDocumentation(doc="Calculate interaction frequecies between baits"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Captured_Reads_V0_1_0().translate("wdl", allow_empty_container=True)


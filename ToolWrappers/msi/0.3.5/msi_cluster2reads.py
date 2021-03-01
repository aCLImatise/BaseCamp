from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean

Msi_Cluster2Reads_V0_1_0 = CommandToolBuilder(tool="msi_cluster2reads", base_command=["msi_cluster2reads"], inputs=[ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_o", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc=""))], container="quay.io/biocontainers/msi:0.3.5--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msi_Cluster2Reads_V0_1_0().translate("wdl")


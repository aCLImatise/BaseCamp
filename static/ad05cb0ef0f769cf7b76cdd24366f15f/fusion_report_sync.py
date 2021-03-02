from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fusion_Report_Sync_V0_1_0 = CommandToolBuilder(tool="fusion_report_sync", base_command=["fusion_report", "sync"], inputs=[ToolInput(tag="in_cosmic_usr", input_type=String(optional=True), prefix="--cosmic_usr", doc=InputDocumentation(doc="COSMIC username")), ToolInput(tag="in_cosmic_passwd", input_type=String(optional=True), prefix="--cosmic_passwd", doc=InputDocumentation(doc="COSMIC password")), ToolInput(tag="in_cosmic_token", input_type=String(optional=True), prefix="--cosmic_token", doc=InputDocumentation(doc="COSMIC token\n"))], outputs=[], container="quay.io/biocontainers/fusion-report:2.1.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fusion_Report_Sync_V0_1_0().translate("wdl")


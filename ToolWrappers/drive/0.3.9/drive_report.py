from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Drive_Report_V0_1_0 = CommandToolBuilder(tool="drive_report", base_command=["drive", "report"], inputs=[ToolInput(tag="in_body", input_type=String(optional=True), prefix="-body", doc=InputDocumentation(doc="the detailed description of the issue being filed")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="-title", doc=InputDocumentation(doc="the title of the issue being filed\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Report_V0_1_0().translate("wdl", allow_empty_container=True)


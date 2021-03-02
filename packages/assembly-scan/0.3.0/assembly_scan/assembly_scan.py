from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Assembly_Scan_V0_1_0 = CommandToolBuilder(tool="assembly_scan", base_command=["assembly-scan"], inputs=[ToolInput(tag="in_assembly_summary_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_assembly", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assembly_Scan_V0_1_0().translate("wdl", allow_empty_container=True)


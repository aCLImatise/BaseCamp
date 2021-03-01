from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Cgatreport_Quickstart_V0_1_0 = CommandToolBuilder(tool="cgatreport_quickstart", base_command=["cgatreport-quickstart"], inputs=[ToolInput(tag="in_dest", input_type=Directory(optional=True), prefix="--dest", doc=InputDocumentation(doc="destination directory.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cgatreport_Quickstart_V0_1_0().translate("wdl", allow_empty_container=True)


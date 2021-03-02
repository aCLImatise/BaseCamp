from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Wdl_Run_V0_1_0 = CommandToolBuilder(tool="wdl_run", base_command=["wdl", "run"], inputs=[ToolInput(tag="in_inputs", input_type=File(optional=True), prefix="--inputs", doc=InputDocumentation(doc="Path to JSON file to define inputs")), ToolInput(tag="in_sge", input_type=Boolean(optional=True), prefix="--sge", doc=InputDocumentation(doc="Use SGE to execute tasks")), ToolInput(tag="in_wdl_file", input_type=String(), position=0, doc=InputDocumentation(doc="Path to WDL File"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wdl_Run_V0_1_0().translate("wdl", allow_empty_container=True)


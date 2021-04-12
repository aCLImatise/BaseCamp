from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sav_Sub_Command_V0_1_0 = CommandToolBuilder(tool="sav_sub_command", base_command=["sav", "sub-command"], inputs=[ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/savvy:2.0.1--h0808e92_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sav_Sub_Command_V0_1_0().translate("wdl")


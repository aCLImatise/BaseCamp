from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Fpa_Rename_V0_1_0 = CommandToolBuilder(tool="fpa_rename", base_command=["fpa", "rename"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Rename reads with value in path passed as parameter")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write rename table in path passed as parameter"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fpa_Rename_V0_1_0().translate("wdl", allow_empty_container=True)


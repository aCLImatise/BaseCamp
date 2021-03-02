from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Cpptraj_Input_V0_1_0 = CommandToolBuilder(tool="cpptraj_input", base_command=["cpptraj_input"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_instructions_path", input_type=File(optional=True), prefix="--input_instructions_path", doc=InputDocumentation(doc="Path of the instructions file.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cpptraj_Input_V0_1_0().translate("wdl", allow_empty_container=True)


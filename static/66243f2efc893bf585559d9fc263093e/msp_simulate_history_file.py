from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Msp_Simulate_History_File_V0_1_0 = CommandToolBuilder(tool="msp_simulate_history_file", base_command=["msp", "simulate", "history_file"], inputs=[ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="")), ToolInput(tag="in_msp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_simulate", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msp_Simulate_History_File_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Seqtk_Hety_V0_1_0 = CommandToolBuilder(tool="seqtk_hety", base_command=["seqtk", "hety"], inputs=[ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="window size [50000]")), ToolInput(tag="in_start_positions_window", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="# start positions in a window [5]")), ToolInput(tag="in_treat_lowercases_masked", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="treat lowercases as masked")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtk_Hety_V0_1_0().translate("wdl", allow_empty_container=True)


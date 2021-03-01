from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Byobu_Tmux_V0_1_0 = CommandToolBuilder(tool="byobu_tmux", base_command=["byobu-tmux"], inputs=[ToolInput(tag="in_l", input_type=String(optional=True), prefix="-L", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_two_clu_vv", input_type=Boolean(optional=True), prefix="-2CluvV", doc=InputDocumentation(doc="")), ToolInput(tag="in_t_mux", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Byobu_Tmux_V0_1_0().translate("wdl", allow_empty_container=True)


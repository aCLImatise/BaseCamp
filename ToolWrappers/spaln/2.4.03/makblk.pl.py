from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Makblk_Pl_V0_1_0 = CommandToolBuilder(tool="makblk.pl", base_command=["makblk.pl"], inputs=[ToolInput(tag="in_use_reduced_alphabet", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=":     use reduced alphabet")), ToolInput(tag="in_x_dot_dot_dot", input_type=Boolean(optional=True), prefix="-X...", doc=InputDocumentation(doc="transferred to spaln")), ToolInput(tag="in_xcc", input_type=Boolean(optional=True), prefix="-XCc", doc=InputDocumentation(doc=":   c=0: conti seed; c=1: spaced seed; c>1: conti + (c-1) spaced seeds")), ToolInput(tag="in_k", input_type=Boolean(optional=True), prefix="-K", doc=InputDocumentation(doc="")), ToolInput(tag="in_wx_dot", input_type=Boolean(optional=True), prefix="-Wx.", doc=InputDocumentation(doc="")), ToolInput(tag="in_bkn_vertical_line_bkp_vertical_line_bka", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_d_vertical_line_p_vertical_lines", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_x_dot_grp", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makblk_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


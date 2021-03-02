from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Lsg_V0_1_0 = CommandToolBuilder(tool="lsg", base_command=["lsg"], inputs=[ToolInput(tag="in_basename", input_type=Boolean(optional=True), prefix="--basename", doc=InputDocumentation(doc="<basename>     # (required)")), ToolInput(tag="in_gsa", input_type=Boolean(optional=True), prefix="--GSA", doc=InputDocumentation(doc="<GSAFilename>  # (default: '<basename>.pairSA')")), ToolInput(tag="in_tau", input_type=Boolean(optional=True), prefix="--TAU", doc=InputDocumentation(doc="<TAU>          # (default: 0)")), ToolInput(tag="in_cyc_num", input_type=Boolean(optional=True), prefix="--CycNum", doc=InputDocumentation(doc="<CycNum>       # (default: 0)")), ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read-length", doc=InputDocumentation(doc="# 0 if unknown or not fixed (default: 0)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lsg_V0_1_0().translate("wdl", allow_empty_container=True)


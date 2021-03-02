from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Graph2Asqg_V0_1_0 = CommandToolBuilder(tool="graph2asqg", base_command=["graph2asqg"], inputs=[ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="# (required)")), ToolInput(tag="in_optional_default_basename", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="# (optional, default: <basename>)")), ToolInput(tag="in_l", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="# (required)")), ToolInput(tag="in_optional_use_ids", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="# (optional) use numeric IDs instead of FASTA IDs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graph2Asqg_V0_1_0().translate("wdl", allow_empty_container=True)


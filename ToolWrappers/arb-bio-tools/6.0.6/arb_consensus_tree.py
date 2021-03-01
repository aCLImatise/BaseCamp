from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arb_Consensus_Tree_V0_1_0 = CommandToolBuilder(tool="arb_consensus_tree", base_command=["arb_consensus_tree"], inputs=[ToolInput(tag="in_write_consensus_tree", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="write consensus tree to outfile")), ToolInput(tag="in_tree", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_Consensus_Tree_V0_1_0().translate("wdl", allow_empty_container=True)


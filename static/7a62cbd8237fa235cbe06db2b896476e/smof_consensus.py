from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Smof_Consensus_V0_1_0 = CommandToolBuilder(tool="smof_consensus", base_command=["smof", "consensus"], inputs=[ToolInput(tag="in_table", input_type=Boolean(optional=True), prefix="--table", doc=InputDocumentation(doc="Print count table instead of consensus")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Consensus_V0_1_0().translate("wdl", allow_empty_container=True)


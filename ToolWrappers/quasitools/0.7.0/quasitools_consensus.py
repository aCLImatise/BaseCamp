from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Quasitools_Consensus_V0_1_0 = CommandToolBuilder(tool="quasitools_consensus", base_command=["quasitools", "consensus"], inputs=[ToolInput(tag="in_percentage", input_type=Int(optional=True), prefix="--percentage", doc=InputDocumentation(doc="percentage to include base in mixture.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--id", doc=InputDocumentation(doc="specify default FASTA sequence identifier to be\nused for sequences without an RG tag.")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quasitools_Consensus_V0_1_0().translate("wdl", allow_empty_container=True)


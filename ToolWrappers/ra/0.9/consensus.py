from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Consensus_V0_1_0 = CommandToolBuilder(tool="consensus", base_command=["consensus"], inputs=[ToolInput(tag="in_reads", input_type=Boolean(optional=True), prefix="--reads", doc=InputDocumentation(doc="reads file (string)")), ToolInput(tag="in_contigs", input_type=Boolean(optional=True), prefix="--contigs", doc=InputDocumentation(doc="contigs file (string)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Consensus_V0_1_0().translate("wdl", allow_empty_container=True)


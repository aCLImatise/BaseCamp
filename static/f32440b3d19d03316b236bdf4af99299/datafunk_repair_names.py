from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Datafunk_Repair_Names_V0_1_0 = CommandToolBuilder(tool="datafunk_repair_names", base_command=["datafunk", "repair_names"], inputs=[ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="")), ToolInput(tag="in_tree", input_type=String(optional=True), prefix="--tree", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(optional=True), prefix="--fasta", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Repair_Names_V0_1_0().translate("wdl")


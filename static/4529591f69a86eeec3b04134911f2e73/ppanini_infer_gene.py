from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Ppanini_Infer_Gene_V0_1_0 = CommandToolBuilder(tool="ppanini_infer_gene", base_command=["ppanini_infer_gene"], inputs=[ToolInput(tag="in_min_per_cid", input_type=Int(optional=True), prefix="--min-percid", doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanini_Infer_Gene_V0_1_0().translate("wdl", allow_empty_container=True)


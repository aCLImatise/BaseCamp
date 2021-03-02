from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Daijin_V0_1_0 = CommandToolBuilder(tool="daijin", base_command=["daijin"], inputs=[ToolInput(tag="in_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_directed", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_acyclic", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_pipeline", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_gene", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_model", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_reconstruction", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_rna", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq", input_type=String(), position=10, doc=InputDocumentation(doc="")), ToolInput(tag="in_data_dot", input_type=String(), position=11, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Daijin_V0_1_0().translate("wdl", allow_empty_container=True)


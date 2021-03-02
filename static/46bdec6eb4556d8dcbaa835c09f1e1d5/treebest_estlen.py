from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Treebest_Estlen_V0_1_0 = CommandToolBuilder(tool="treebest_estlen", base_command=["treebest", "estlen"], inputs=[ToolInput(tag="in_tree", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_matrix", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tag", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Estlen_V0_1_0().translate("wdl", allow_empty_container=True)


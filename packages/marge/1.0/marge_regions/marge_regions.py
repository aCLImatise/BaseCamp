from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Marge_Regions_V0_1_0 = CommandToolBuilder(tool="marge_regions", base_command=["marge", "regions"], inputs=[ToolInput(tag="in_marge", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_is", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_free", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_software", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_predict", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_key", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_regulated", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_genes", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_and", input_type=String(), position=10, doc=InputDocumentation(doc="")), ToolInput(tag="in_cis_regulatory", input_type=String(), position=11, doc=InputDocumentation(doc="")), ToolInput(tag="in_regions", input_type=String(), position=12, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=13, doc=InputDocumentation(doc="")), ToolInput(tag="in_human", input_type=String(), position=14, doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(), position=15, doc=InputDocumentation(doc="")), ToolInput(tag="in_mouse_dot", input_type=String(), position=16, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Marge_Regions_V0_1_0().translate("wdl", allow_empty_container=True)


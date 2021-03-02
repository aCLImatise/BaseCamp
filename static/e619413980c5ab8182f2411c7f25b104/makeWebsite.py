from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Makewebsite_V0_1_0 = CommandToolBuilder(tool="makeWebsite", base_command=["makeWebsite"], inputs=[ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_spec_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_spec_b", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_mouse_bed", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_human_bed", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_maf_dir", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_prefix", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makewebsite_V0_1_0().translate("wdl", allow_empty_container=True)


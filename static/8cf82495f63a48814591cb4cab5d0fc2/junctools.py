from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Junctools_V0_1_0 = CommandToolBuilder(tool="junctools", base_command=["junctools"], inputs=[ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_script", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_contains", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_number", input_type=Int(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_tools", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_manipulating", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_junction", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_files_dot", input_type=String(), position=10, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Junctools_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Qorts_V0_1_0 = CommandToolBuilder(tool="qorts", base_command=["qorts"], inputs=[ToolInput(tag="in_formatting_dot", input_type=String(), position=0, doc=InputDocumentation(doc="NOTE: if you run into OutOfMemoryExceptions, ")), ToolInput(tag="in_identifiers_dot", input_type=String(), position=0, doc=InputDocumentation(doc="For more info, use:")), ToolInput(tag="in_orphan_dot", input_type=String(), position=0, doc=InputDocumentation(doc="For more info, use:")), ToolInput(tag="in_merchantability", input_type=String(), position=0, doc=InputDocumentation(doc="or fitness for any particular purpose.")), ToolInput(tag="in_citation_dot", input_type=String(), position=0, doc=InputDocumentation(doc="NOTE: This package includes (internally) the sam-1.113.jar "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qorts_V0_1_0().translate("wdl", allow_empty_container=True)


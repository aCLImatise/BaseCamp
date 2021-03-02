from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Luciphor2_V0_1_0 = CommandToolBuilder(tool="luciphor2", base_command=["luciphor2"], inputs=[ToolInput(tag="in_jar", input_type=Int(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Luciphor2_V0_1_0().translate("wdl", allow_empty_container=True)


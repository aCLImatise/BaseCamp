from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Skmer_Query_Library_V0_1_0 = CommandToolBuilder(tool="skmer_query_library", base_command=["skmer", "query", "library"], inputs=[ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_sk_mer", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_query", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_library", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Skmer_Query_Library_V0_1_0().translate("wdl", allow_empty_container=True)


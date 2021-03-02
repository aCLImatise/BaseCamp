from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Get_Lowest_Common_Ancestor_Pl_V0_1_0 = CommandToolBuilder(tool="get_lowest_common_ancestor.pl", base_command=["get_lowest_common_ancestor.pl"], inputs=[ToolInput(tag="in_obo_input_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="OBO input file")), ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="term 1 ID")), ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="term 2 ID")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=": get_lowest_common_ancestor.pl [options]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Lowest_Common_Ancestor_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


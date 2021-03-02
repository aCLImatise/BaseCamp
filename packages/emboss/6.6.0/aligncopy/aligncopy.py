from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Aligncopy_V0_1_0 = CommandToolBuilder(tool="aligncopy", base_command=["aligncopy"], inputs=[ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="-name", doc=InputDocumentation(doc="string     Name of the alignment (Any string)")), ToolInput(tag="in_comment", input_type=Boolean(optional=True), prefix="-comment", doc=InputDocumentation(doc="string     Comment on the alignment (Any string)")), ToolInput(tag="in_append", input_type=Boolean(optional=True), prefix="-append", doc=InputDocumentation(doc="boolean    [N] This allows you to append the name and\ncomments you have given on to the end of the\nexisting alignment header."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aligncopy_V0_1_0().translate("wdl", allow_empty_container=True)


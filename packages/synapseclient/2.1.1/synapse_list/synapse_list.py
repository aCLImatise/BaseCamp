from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Synapse_List_V0_1_0 = CommandToolBuilder(tool="synapse_list", base_command=["synapse", "list"], inputs=[ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="recursively list contents of the subtree descending from\nthe given Synapse ID")), ToolInput(tag="in_long", input_type=Boolean(optional=True), prefix="--long", doc=InputDocumentation(doc="List synapse entities in long format")), ToolInput(tag="in_modified", input_type=Boolean(optional=True), prefix="--modified", doc=InputDocumentation(doc="List modified by and modified date")), ToolInput(tag="in_syn_one_two_three", input_type=Int(), position=0, doc=InputDocumentation(doc="Synapse ID of a project or folder"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_List_V0_1_0().translate("wdl", allow_empty_container=True)


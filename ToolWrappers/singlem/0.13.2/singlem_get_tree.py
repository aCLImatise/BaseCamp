from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, String

Singlem_Get_Tree_V0_1_0 = CommandToolBuilder(tool="singlem_get_tree", base_command=["singlem", "get_tree"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="output debug information")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="only output errors")), ToolInput(tag="in_full_help", input_type=Boolean(optional=True), prefix="--full_help", doc=InputDocumentation(doc="display all help options")), ToolInput(tag="in_single_m_packages", input_type=Array(t=String(), optional=True), prefix="--singlem_packages", doc=InputDocumentation(doc="SingleM packages to use [default: use the default set]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singlem_Get_Tree_V0_1_0().translate("wdl", allow_empty_container=True)


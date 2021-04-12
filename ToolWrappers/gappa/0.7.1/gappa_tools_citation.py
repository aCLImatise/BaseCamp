from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Gappa_Tools_Citation_V0_1_0 = CommandToolBuilder(tool="gappa_tools_citation", base_command=["gappa", "tools", "citation"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc=":{bibtex,markdown,both}=bibtex\nOutput format for citations.")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="Print all relevant citations used by commands in gappa.")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="List all available citation keys.")), ToolInput(tag="in_keys_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gappa:0.7.1--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gappa_Tools_Citation_V0_1_0().translate("wdl")


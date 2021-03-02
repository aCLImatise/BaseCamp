from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Sierrapy_Mutations_V0_1_0 = CommandToolBuilder(tool="sierrapy_mutations", base_command=["sierrapy", "mutations"], inputs=[ToolInput(tag="in_query", input_type=File(optional=True), prefix="--query", doc=InputDocumentation(doc="A file contains GraphQL fragment definition on\n`MutationsAnalysis`.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="File path to store the JSON result.")), ToolInput(tag="in_ugly", input_type=Boolean(optional=True), prefix="--ugly", doc=InputDocumentation(doc="Output compressed JSON result.")), ToolInput(tag="in_mutations_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sierrapy_Mutations_V0_1_0().translate("wdl", allow_empty_container=True)


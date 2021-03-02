from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Fidochooseparameters_V0_1_0 = CommandToolBuilder(tool="FidoChooseParameters", base_command=["FidoChooseParameters"], inputs=[ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_graph_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_decoy_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fidochooseparameters_V0_1_0().translate("wdl", allow_empty_container=True)


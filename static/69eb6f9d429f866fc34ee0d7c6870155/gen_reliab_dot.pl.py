from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Gen_Reliab_Dot_Pl_V0_1_0 = CommandToolBuilder(tool="gen_reliab_dot.pl", base_command=["gen-reliab-dot.pl"], inputs=[ToolInput(tag="in_man", input_type=String(optional=True), prefix="--man", doc=InputDocumentation(doc="documentation")), ToolInput(tag="in_verbose", input_type=File(optional=True), prefix="--verbose", doc=InputDocumentation(doc="reliability file")), ToolInput(tag="in_alignment_file", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="alignment file")), ToolInput(tag="in_probabilities", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="probabilities")), ToolInput(tag="in_alignment", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_help", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reliability", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gen_Reliab_Dot_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


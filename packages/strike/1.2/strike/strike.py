from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Strike_V0_1_0 = CommandToolBuilder(tool="strike", base_command=["strike"], inputs=[ToolInput(tag="in_alignment", input_type=File(optional=True), prefix="--alignment", doc=InputDocumentation(doc="Alignment File")), ToolInput(tag="in_template_file", input_type=File(optional=True), prefix="--template_file", doc=InputDocumentation(doc="Connection File")), ToolInput(tag="in_normalize", input_type=Boolean(optional=True), prefix="--normalize", doc=InputDocumentation(doc="Normalizes the score")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out_file", doc=InputDocumentation(doc="The file where the results will be saved"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strike_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Circlator_Required_Arguments_V0_1_0 = CommandToolBuilder(tool="circlator_required arguments", base_command=["circlator", "required arguments"], inputs=[ToolInput(tag="in_circ_lator", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_required_arguments", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circlator_Required_Arguments_V0_1_0().translate("wdl", allow_empty_container=True)


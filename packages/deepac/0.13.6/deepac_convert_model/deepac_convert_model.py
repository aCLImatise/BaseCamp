from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Deepac_Convert_Model_V0_1_0 = CommandToolBuilder(tool="deepac_convert_model", base_command=["deepac", "convert", "model"], inputs=[ToolInput(tag="in_i", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_w", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_convert", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_config", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_model", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/deepac:0.13.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Convert_Model_V0_1_0().translate("wdl")


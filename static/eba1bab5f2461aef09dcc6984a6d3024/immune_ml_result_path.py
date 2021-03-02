from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Immune_Ml_Result_Path_V0_1_0 = CommandToolBuilder(tool="immune_ml_result_path", base_command=["immune-ml", "result_path"], inputs=[ToolInput(tag="in_tool", input_type=String(optional=True), prefix="--tool", doc=InputDocumentation(doc="")), ToolInput(tag="in_immune_ml", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_specification_path", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_result_path", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/immuneml:1.1.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Immune_Ml_Result_Path_V0_1_0().translate("wdl")


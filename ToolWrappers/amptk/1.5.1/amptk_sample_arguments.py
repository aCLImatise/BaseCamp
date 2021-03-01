from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Amptk_Sample_Arguments_V0_1_0 = CommandToolBuilder(tool="amptk_sample_arguments", base_command=["amptk", "sample", "arguments"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_am_ptk_barcode_rarifydotpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/amptk:1.5.1--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Sample_Arguments_V0_1_0().translate("wdl")


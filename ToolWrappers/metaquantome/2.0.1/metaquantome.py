from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Metaquantome_V0_1_0 = CommandToolBuilder(tool="metaquantome", base_command=["metaquantome"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/metaquantome:2.0.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metaquantome_V0_1_0().translate("wdl")


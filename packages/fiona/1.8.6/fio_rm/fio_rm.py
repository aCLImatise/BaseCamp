from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fio_Rm_V0_1_0 = CommandToolBuilder(tool="fio_rm", base_command=["fio", "rm"], inputs=[ToolInput(tag="in_layer", input_type=String(optional=True), prefix="--layer", doc=InputDocumentation(doc="Name of layer to remove.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fiona:1.8.6", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fio_Rm_V0_1_0().translate("wdl")


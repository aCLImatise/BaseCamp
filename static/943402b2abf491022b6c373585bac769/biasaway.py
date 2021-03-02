from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Biasaway_V0_1_0 = CommandToolBuilder(tool="biasaway", base_command=["biasaway"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="-> type: `biasaway w -h`")), ToolInput(tag="in_bin", input_type=String(), position=0, doc=InputDocumentation(doc="-> type: `biasaway c -h`"))], outputs=[], container="quay.io/biocontainers/biasaway:3.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biasaway_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ilasm_V0_1_0 = CommandToolBuilder(tool="ilasm", base_command=["ilasm"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="About the Mono ILasm compiler"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ilasm_V0_1_0().translate("wdl", allow_empty_container=True)


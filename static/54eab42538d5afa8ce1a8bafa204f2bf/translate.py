from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Translate_V0_1_0 = CommandToolBuilder(tool="translate", base_command=["translate"], inputs=[ToolInput(tag="in_fast_a_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fsa:1.15.9--h8b12597_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Translate_V0_1_0().translate("wdl")


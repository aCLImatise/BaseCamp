from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Chromosemble_V0_1_0 = CommandToolBuilder(tool="Chromosemble", base_command=["Chromosemble"], inputs=[ToolInput(tag="in_string_target_file", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="<string> : target fasta file (in chromosome coordinates)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chromosemble_V0_1_0().translate("wdl", allow_empty_container=True)


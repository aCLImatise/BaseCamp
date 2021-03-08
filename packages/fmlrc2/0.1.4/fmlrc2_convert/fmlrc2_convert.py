from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fmlrc2_Convert_V0_1_0 = CommandToolBuilder(tool="fmlrc2_convert", base_command=["fmlrc2-convert"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="The raw BWT (default: stdin)"))], outputs=[], container="quay.io/biocontainers/fmlrc2:0.1.4--heda7bfa_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fmlrc2_Convert_V0_1_0().translate("wdl")


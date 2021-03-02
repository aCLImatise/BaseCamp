from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Jannovar_Changes_V0_1_0 = CommandToolBuilder(tool="jannovar_changes", base_command=["jannovar", "changes"], inputs=[ToolInput(tag="in_jan_novar_cli", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/jannovar-cli:0.35--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jannovar_Changes_V0_1_0().translate("wdl")


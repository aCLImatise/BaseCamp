from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Perform_Controls_Pl_V0_1_0 = CommandToolBuilder(tool="perform_controls.pl", base_command=["perform_controls.pl"], inputs=[ToolInput(tag="in_output_progress_screen", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Output progress to screen"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Perform_Controls_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gcloud_Init_V0_1_0 = CommandToolBuilder(tool="gcloud_init", base_command=["gcloud", "init"], inputs=[ToolInput(tag="in_console_only", input_type=Boolean(optional=True), prefix="--console-only", doc=InputDocumentation(doc="Prevent the command from launching a browser for authorization.")), ToolInput(tag="in_skip_diagnostics", input_type=Boolean(optional=True), prefix="--skip-diagnostics", doc=InputDocumentation(doc="Do not run diagnostics."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Init_V0_1_0().translate("wdl", allow_empty_container=True)


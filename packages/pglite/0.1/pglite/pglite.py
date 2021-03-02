from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Pglite_V0_1_0 = CommandToolBuilder(tool="pglite", base_command=["pglite"], inputs=[ToolInput(tag="in_personality", input_type=String(optional=True), prefix="--personality", doc=InputDocumentation(doc="|postgres\nDefaults to `postgres`. The `pipeline` personality exists to support\nPipelineDB.")), ToolInput(tag="in_directory", input_type=Boolean(optional=True), prefix="--directory", doc=InputDocumentation(doc="/path/to/data\nDefaults to `./var`.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pglite_V0_1_0().translate("wdl", allow_empty_container=True)


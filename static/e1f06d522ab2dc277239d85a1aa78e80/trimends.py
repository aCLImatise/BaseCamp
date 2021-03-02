from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Trimends_V0_1_0 = CommandToolBuilder(tool="trimends", base_command=["trimends"], inputs=[ToolInput(tag="in_help_dot_qual", input_type=Boolean(optional=True), prefix="--help.qual", doc=InputDocumentation(doc=", and --help.frg must exist"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trimends_V0_1_0().translate("wdl", allow_empty_container=True)


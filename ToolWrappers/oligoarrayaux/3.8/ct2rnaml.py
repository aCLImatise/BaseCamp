from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ct2Rnaml_V0_1_0 = CommandToolBuilder(tool="ct2rnaml", base_command=["ct2rnaml"], inputs=[ToolInput(tag="in_help_dot_ct", input_type=Boolean(optional=True), prefix="--help.ct", doc=InputDocumentation(doc=": No such file or directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ct2Rnaml_V0_1_0().translate("wdl", allow_empty_container=True)


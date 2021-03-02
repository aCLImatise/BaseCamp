from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Lambda2_V0_1_0 = CommandToolBuilder(tool="lambda2", base_command=["lambda2"], inputs=[ToolInput(tag="in_version_check", input_type=Boolean(optional=True), prefix="--version-check", doc=InputDocumentation(doc="Turn this option off to disable version update notifications of the\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1.")), ToolInput(tag="in_copyright", input_type=Boolean(optional=True), prefix="--copyright", doc=InputDocumentation(doc="Display long copyright information."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lambda2_V0_1_0().translate("wdl", allow_empty_container=True)


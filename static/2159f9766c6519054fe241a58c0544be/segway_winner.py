from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Segway_Winner_V0_1_0 = CommandToolBuilder(tool="segway_winner", base_command=["segway-winner"], inputs=[ToolInput(tag="in_input_master", input_type=Boolean(optional=True), prefix="--input-master", doc=InputDocumentation(doc="print input master file name")), ToolInput(tag="in_params", input_type=Boolean(optional=True), prefix="--params", doc=InputDocumentation(doc="print parameters file name")), ToolInput(tag="in_copy", input_type=Boolean(optional=True), prefix="--copy", doc=InputDocumentation(doc="copy files to final winning file locations")), ToolInput(tag="in_clobber", input_type=Boolean(optional=True), prefix="--clobber", doc=InputDocumentation(doc="overwrite existing files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segway_Winner_V0_1_0().translate("wdl", allow_empty_container=True)


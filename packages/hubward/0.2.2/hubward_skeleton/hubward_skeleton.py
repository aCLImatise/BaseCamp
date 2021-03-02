from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Hubward_Skeleton_V0_1_0 = CommandToolBuilder(tool="hubward_skeleton", base_command=["hubward", "skeleton"], inputs=[ToolInput(tag="in_host", input_type=String(optional=True), prefix="--host", doc=InputDocumentation(doc="\")), ToolInput(tag="in_use_metadata_builder", input_type=Boolean(optional=True), prefix="--use-metadata-builder", doc=InputDocumentation(doc="Sets up a metadata-builder.py script instead of a\nmetadata.yaml config file. Useful for more complicated\nstudies (default: False)\n")), ToolInput(tag="in_dirname", input_type=String(), position=0, doc=InputDocumentation(doc="Path to contain skeleton project"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hubward_Skeleton_V0_1_0().translate("wdl", allow_empty_container=True)


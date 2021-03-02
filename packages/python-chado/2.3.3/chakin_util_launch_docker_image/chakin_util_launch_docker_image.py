from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Chakin_Util_Launch_Docker_Image_V0_1_0 = CommandToolBuilder(tool="chakin_util_launch_docker_image", base_command=["chakin", "util", "launch_docker_image"], inputs=[ToolInput(tag="in_background", input_type=Boolean(optional=True), prefix="--background", doc=InputDocumentation(doc="Launch the image in the background")), ToolInput(tag="in_no_yeast", input_type=Boolean(optional=True), prefix="--no_yeast", doc=InputDocumentation(doc="Disable loading of example yeast data")), ToolInput(tag="in_none", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Util_Launch_Docker_Image_V0_1_0().translate("wdl", allow_empty_container=True)


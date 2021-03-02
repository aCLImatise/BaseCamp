from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dx_Docker_Add_To_Applet_Applet_V0_1_0 = CommandToolBuilder(tool="dx_docker_add_to_applet_applet", base_command=["dx-docker", "add-to-applet", "applet"], inputs=[ToolInput(tag="in_alternative_export", input_type=Boolean(optional=True), prefix="--alternative_export", doc=InputDocumentation(doc="")), ToolInput(tag="in_dx_docker", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_add_to_applet", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_image", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_applet", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Docker_Add_To_Applet_Applet_V0_1_0().translate("wdl", allow_empty_container=True)


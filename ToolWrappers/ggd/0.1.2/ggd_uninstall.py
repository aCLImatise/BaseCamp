from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ggd_Uninstall_V0_1_0 = CommandToolBuilder(tool="ggd_uninstall", base_command=["ggd", "uninstall"], inputs=[ToolInput(tag="in_channel", input_type=String(optional=True), prefix="--channel", doc=InputDocumentation(doc="The ggd channel of the recipe to uninstall. (Default =\ngenomics)\n")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="the name of the recipe to uninstall"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ggd_Uninstall_V0_1_0().translate("wdl", allow_empty_container=True)


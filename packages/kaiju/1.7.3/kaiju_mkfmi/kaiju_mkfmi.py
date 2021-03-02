from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Kaiju_Mkfmi_V0_1_0 = CommandToolBuilder(tool="kaiju_mkfmi", base_command=["kaiju-mkfmi"], inputs=[ToolInput(tag="in_remove_cmd", input_type=Boolean(optional=True), prefix="-removecmd", doc=InputDocumentation(doc="(string)\nCommand for deleting .bwt and .sa files (e.g. rm)\nValue:  NULL (null)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kaiju_Mkfmi_V0_1_0().translate("wdl", allow_empty_container=True)


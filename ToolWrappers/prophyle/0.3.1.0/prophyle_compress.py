from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Prophyle_Compress_V0_1_0 = CommandToolBuilder(tool="prophyle_compress", base_command=["prophyle", "compress"], inputs=[ToolInput(tag="in_advanced_configuration_json", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[STR [STR ...]]  advanced configuration (a JSON dictionary)")), ToolInput(tag="in_str", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Compress_V0_1_0().translate("wdl", allow_empty_container=True)


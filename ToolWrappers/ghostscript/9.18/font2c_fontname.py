from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Font2C_Fontname_V0_1_0 = CommandToolBuilder(tool="font2c_fontname", base_command=["font2c", "fontname"], inputs=[ToolInput(tag="in_nostringval", input_type=Boolean(optional=True), prefix="--nostringval--", doc=InputDocumentation(doc="cfile   (--help)   (w)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Font2C_Fontname_V0_1_0().translate("wdl", allow_empty_container=True)


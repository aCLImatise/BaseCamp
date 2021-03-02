from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Satsumatogff_V0_1_0 = CommandToolBuilder(tool="SatsumaToGFF", base_command=["SatsumaToGFF"], inputs=[ToolInput(tag="in_string_satsuma_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="<string> : input satsuma file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Satsumatogff_V0_1_0().translate("wdl", allow_empty_container=True)


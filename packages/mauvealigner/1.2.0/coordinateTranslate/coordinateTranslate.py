from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Coordinatetranslate_V0_1_0 = CommandToolBuilder(tool="coordinateTranslate", base_command=["coordinateTranslate"], inputs=[ToolInput(tag="in_x_mfa_alignment", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment_coordinate_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coordinatetranslate_V0_1_0().translate("wdl", allow_empty_container=True)


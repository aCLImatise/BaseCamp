from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Mockinbird2Table_V0_1_0 = CommandToolBuilder(tool="mb_mockinbird2table", base_command=["mb-mockinbird2table"], inputs=[ToolInput(tag="in_post_thresh", input_type=String(optional=True), prefix="--post_thresh", doc=InputDocumentation(doc="")), ToolInput(tag="in_posterior_file", input_type=String(), position=0, doc=InputDocumentation(doc="output_file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Mockinbird2Table_V0_1_0().translate("wdl", allow_empty_container=True)


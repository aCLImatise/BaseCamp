from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float

Pal_Finder_V0_1_0 = CommandToolBuilder(tool="pal_finder", base_command=["pal_finder"], inputs=[ToolInput(tag="in_perl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pal_finder_v_zero_dot_zero_two_dot_zero_four_do_tpl", input_type=Float(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_config_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pal_Finder_V0_1_0().translate("wdl", allow_empty_container=True)


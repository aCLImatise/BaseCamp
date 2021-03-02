from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fisher_Exact_V0_1_0 = CommandToolBuilder(tool="fisher_exact", base_command=["fisher_exact"], inputs=[ToolInput(tag="in_compute", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pos_succ", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pos", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fisher", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_neg_succ", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_exact", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_test", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_p_value", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fisher_Exact_V0_1_0().translate("wdl", allow_empty_container=True)


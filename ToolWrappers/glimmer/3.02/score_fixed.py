from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Score_Fixed_V0_1_0 = CommandToolBuilder(tool="score_fixed", base_command=["score-fixed"], inputs=[ToolInput(tag="in_negative_model_regular", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="Negative model is regular ICM, not fixed-length ICM")), ToolInput(tag="in_use_null_model", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="Use NULL negative model, i.e., constant zero")), ToolInput(tag="in_output_simple_format", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Output simple format of string num and 1 or -1")), ToolInput(tag="in_pos_model", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_neg_model", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Score_Fixed_V0_1_0().translate("wdl", allow_empty_container=True)


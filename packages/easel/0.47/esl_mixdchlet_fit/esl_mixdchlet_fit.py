from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Esl_Mixdchlet_Fit_V0_1_0 = CommandToolBuilder(tool="esl_mixdchlet_fit", base_command=["esl-mixdchlet", "fit"], inputs=[ToolInput(tag="in_set_random_seed", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc=": set random number seed to <n>  [0]")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_count_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/easel:0.47--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Mixdchlet_Fit_V0_1_0().translate("wdl")


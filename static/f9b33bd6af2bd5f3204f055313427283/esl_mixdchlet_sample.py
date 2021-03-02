from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Esl_Mixdchlet_Sample_V0_1_0 = CommandToolBuilder(tool="esl_mixdchlet_sample", base_command=["esl-mixdchlet", "sample"], inputs=[ToolInput(tag="in_set_random_seed", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc=": set random number seed  [0]")), ToolInput(tag="in__alphabet_size", input_type=Int(optional=True), prefix="-K", doc=InputDocumentation(doc=": alphabet size  [20]")), ToolInput(tag="in_number_mixture_components", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc=": number of mixture components  [9]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Mixdchlet_Sample_V0_1_0().translate("wdl", allow_empty_container=True)


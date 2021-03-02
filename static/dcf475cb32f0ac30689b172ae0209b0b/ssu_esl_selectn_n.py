from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Ssu_Esl_Selectn_N_V0_1_0 = CommandToolBuilder(tool="ssu_esl_selectn_n", base_command=["ssu-esl-selectn", "n"], inputs=[ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Esl_Selectn_N_V0_1_0().translate("wdl", allow_empty_container=True)


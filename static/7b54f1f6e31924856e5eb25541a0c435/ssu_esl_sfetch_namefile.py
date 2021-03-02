from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Ssu_Esl_Sfetch_Namefile_V0_1_0 = CommandToolBuilder(tool="ssu_esl_sfetch_namefile", base_command=["ssu-esl-sfetch", "namefile"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_ssu_esl_s_fetch", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sq_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Esl_Sfetch_Namefile_V0_1_0().translate("wdl", allow_empty_container=True)


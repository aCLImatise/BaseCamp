from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Esl_Sfetch_Sqfile_V0_1_0 = CommandToolBuilder(tool="esl_sfetch_sqfile", base_command=["esl-sfetch", "sqfile"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_esl_s_fetch", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_name_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/easel:0.47--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Sfetch_Sqfile_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Ssu_Esl_Alimask_Msafile_V0_1_0 = CommandToolBuilder(tool="ssu_esl_alimask_msafile", base_command=["ssu-esl-alimask", "msafile"], inputs=[ToolInput(tag="in_rf_is_mask", input_type=File(optional=True), prefix="--rf-is-mask", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_mask_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ssu_esl_ali_mask", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_coords", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Esl_Alimask_Msafile_V0_1_0().translate("wdl", allow_empty_container=True)


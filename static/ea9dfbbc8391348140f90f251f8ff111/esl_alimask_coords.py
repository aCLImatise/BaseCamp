from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Esl_Alimask_Coords_V0_1_0 = CommandToolBuilder(tool="esl_alimask_coords", base_command=["esl-alimask", "coords"], inputs=[ToolInput(tag="in_rf_is_mask", input_type=File(optional=True), prefix="--rf-is-mask", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_esl_ali_mask", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_msa_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_mask_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/easel:0.47--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Alimask_Coords_V0_1_0().translate("wdl")


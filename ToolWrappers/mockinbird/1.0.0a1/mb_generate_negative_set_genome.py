from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Mb_Generate_Negative_Set_Genome_V0_1_0 = CommandToolBuilder(tool="mb_generate_negative_set_genome", base_command=["mb-generate-negative-set", "genome"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_width", input_type=String(optional=True), prefix="--width", doc=InputDocumentation(doc="")), ToolInput(tag="in_number", input_type=Int(optional=True), prefix="--number", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_generate_negative_set", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Generate_Negative_Set_Genome_V0_1_0().translate("wdl", allow_empty_container=True)


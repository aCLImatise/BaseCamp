from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Wg_Blimp_Create_Config_V0_1_0 = CommandToolBuilder(tool="wg_blimp_create_config", base_command=["wg-blimp", "create-config"], inputs=[ToolInput(tag="in_genome_build", input_type=Boolean(optional=True), prefix="--genome_build", doc=InputDocumentation(doc="[hg19|hg38|mmul10|None]\nBuild of the reference used for annotation.")), ToolInput(tag="in_cores_per_job", input_type=Int(optional=True), prefix="--cores-per-job", doc=InputDocumentation(doc="The number of cores to use per job.\n[required]")), ToolInput(tag="in_fast_q_dir", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_group_one", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wg-blimp:0.9.7--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wg_Blimp_Create_Config_V0_1_0().translate("wdl")


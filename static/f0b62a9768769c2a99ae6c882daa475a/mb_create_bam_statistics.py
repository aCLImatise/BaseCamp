from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Mb_Create_Bam_Statistics_V0_1_0 = CommandToolBuilder(tool="mb_create_bam_statistics", base_command=["mb-create-bam-statistics"], inputs=[ToolInput(tag="in_gff_file", input_type=File(optional=True), prefix="--gff_file", doc=InputDocumentation(doc="")), ToolInput(tag="in_estimate_bam_statistics", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_json", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Create_Bam_Statistics_V0_1_0().translate("wdl", allow_empty_container=True)


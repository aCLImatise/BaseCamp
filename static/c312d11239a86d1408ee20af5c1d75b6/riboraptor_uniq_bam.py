from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Riboraptor_Uniq_Bam_V0_1_0 = CommandToolBuilder(tool="riboraptor_uniq_bam", base_command=["riboraptor", "uniq-bam"], inputs=[ToolInput(tag="in_in_bam", input_type=String(optional=True), prefix="--inbam", doc=InputDocumentation(doc="[required]")), ToolInput(tag="in_out_bam", input_type=String(optional=True), prefix="--outbam", doc=InputDocumentation(doc="[required]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Riboraptor_Uniq_Bam_V0_1_0().translate("wdl", allow_empty_container=True)


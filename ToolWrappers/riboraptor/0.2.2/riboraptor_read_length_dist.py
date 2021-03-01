from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Riboraptor_Read_Length_Dist_V0_1_0 = CommandToolBuilder(tool="riboraptor_read_length_dist", base_command=["riboraptor", "read-length-dist"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Path to BAM file  [required]")), ToolInput(tag="in_save_to", input_type=Int(optional=True), prefix="--saveto", doc=InputDocumentation(doc="Path to write read length dist tsv output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Riboraptor_Read_Length_Dist_V0_1_0().translate("wdl", allow_empty_container=True)


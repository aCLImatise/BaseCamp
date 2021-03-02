from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ref_Seqs_From_Bam_V0_1_0 = CommandToolBuilder(tool="ref_seqs_from_bam", base_command=["ref_seqs_from_bam"], inputs=[ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="input bam file, MD tag must be set (mini_align -m)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ref_Seqs_From_Bam_V0_1_0().translate("wdl", allow_empty_container=True)


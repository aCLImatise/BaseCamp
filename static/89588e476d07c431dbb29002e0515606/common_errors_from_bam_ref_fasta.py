from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Common_Errors_From_Bam_Ref_Fasta_V0_1_0 = CommandToolBuilder(tool="common_errors_from_bam_ref_fasta", base_command=["common_errors_from_bam", "ref_fasta"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_common_errors_from_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_fast_a", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Common_Errors_From_Bam_Ref_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Bolt_Fasta_Faidx_V0_1_0 = CommandToolBuilder(tool="bolt_fasta_faidx", base_command=["bolt", "fasta", "faidx"], inputs=[ToolInput(tag="in_file_path", input_type=File(optional=True), prefix="--filepath", doc=InputDocumentation(doc="A bam file (*require)")), ToolInput(tag="in_genie", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fa_idx", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bolt_Fasta_Faidx_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Contig2Contig_Contigfile_V0_1_0 = CommandToolBuilder(tool="contig2contig_contigfile", base_command=["contig2contig", "contigfile"], inputs=[ToolInput(tag="in_contig_two_contig", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_contig_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_contig_file", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contig2Contig_Contigfile_V0_1_0().translate("wdl", allow_empty_container=True)


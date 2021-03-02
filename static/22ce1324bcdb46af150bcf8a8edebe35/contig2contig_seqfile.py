from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Contig2Contig_Seqfile_V0_1_0 = CommandToolBuilder(tool="contig2contig_seqfile", base_command=["contig2contig", "seqfile"], inputs=[ToolInput(tag="in_contig_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_contig_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contig2Contig_Seqfile_V0_1_0().translate("wdl", allow_empty_container=True)


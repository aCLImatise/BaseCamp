from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nhmmer_Target_Seqfile_V0_1_0 = CommandToolBuilder(tool="nhmmer_target seqfile", base_command=["nhmmer", "target seqfile"], inputs=[ToolInput(tag="in_n_hmmer", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_hmm_file_vertical_line_align_file_vertical_line_seq_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_seq_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nhmmer_Target_Seqfile_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Readseq_Select_Seqs_V0_1_0 = CommandToolBuilder(tool="ReadSeq_select_seqs", base_command=["ReadSeq", "select-seqs"], inputs=[ToolInput(tag="in_sequence_selector", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ids_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_outfile", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_format", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_keep", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_y_vertical_linen", input_type=String(optional=True), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readseq_Select_Seqs_V0_1_0().translate("wdl", allow_empty_container=True)


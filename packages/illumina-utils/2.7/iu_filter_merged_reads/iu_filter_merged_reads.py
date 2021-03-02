from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Iu_Filter_Merged_Reads_V0_1_0 = CommandToolBuilder(tool="iu_filter_merged_reads", base_command=["iu-filter-merged-reads"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Where filtered reads will be written (default:\n[-i]-MAX-MISMATCH-[-m]")), ToolInput(tag="in_max_mismatches", input_type=Int(optional=True), prefix="--max-mismatches", doc=InputDocumentation(doc="Maximum number of mismatches allowed in the overlapped\nregion\n")), ToolInput(tag="in_file_path", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA file to be filtered"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Filter_Merged_Reads_V0_1_0().translate("wdl", allow_empty_container=True)


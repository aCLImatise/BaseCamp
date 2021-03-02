from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Table2Fasta_V0_1_0 = CommandToolBuilder(tool="mb_table2fasta", base_command=["mb-table2fasta"], inputs=[ToolInput(tag="in_flank_bp", input_type=String(optional=True), prefix="--flank_bp", doc=InputDocumentation(doc="")), ToolInput(tag="in_table_file", input_type=String(), position=0, doc=InputDocumentation(doc="genome_fasta")), ToolInput(tag="in_output_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Table2Fasta_V0_1_0().translate("wdl", allow_empty_container=True)


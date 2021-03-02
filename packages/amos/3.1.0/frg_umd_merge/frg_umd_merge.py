from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Frg_Umd_Merge_V0_1_0 = CommandToolBuilder(tool="frg_umd_merge", base_command=["frg-umd-merge"], inputs=[ToolInput(tag="in_determines_field_mustmatch", input_type=Boolean(optional=True), prefix="-0", doc=InputDocumentation(doc="Determines which field on fasta header line must\nmatch the seqname in the src field of the frg file\n-0  no match required (default)\n-1  first field must match\n-2  second field must match")), ToolInput(tag="in_frg_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_umd_seq_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_umd_qual_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Frg_Umd_Merge_V0_1_0().translate("wdl", allow_empty_container=True)


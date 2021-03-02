from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arb_Convert_Aln_V0_1_0 = CommandToolBuilder(tool="arb_convert_aln", base_command=["arb_convert_aln"], inputs=[ToolInput(tag="in_where", input_type=String(), position=0, doc=InputDocumentation(doc="INFMT  may be 'GenBank', 'EMBL', 'AE2' or 'SwissProt' and\nOUTFMT may be 'GenBank', 'EMBL', 'AE2', 'NEXUS', 'PHYLIP', 'FASTDNAML', 'GCG' or 'Printable'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_Convert_Aln_V0_1_0().translate("wdl", allow_empty_container=True)


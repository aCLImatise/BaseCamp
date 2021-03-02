from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Biscuit_Cinread_V0_1_0 = CommandToolBuilder(tool="biscuit_cinread", base_command=["biscuit", "cinread"], inputs=[ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="region.")), ToolInput(tag="in_target_c_cg", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="target (c, cg, ch, hcg, gch, hch) [cg]")), ToolInput(tag="in_content_print_delimitedqname", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="content to print, ','-delimited:\nQNAME, QPAIR, STRAND, BSSTRAND, MAPQ\nQBEG, QEND, CHRM, CRPOS, CGRPOS\nCQPOS, CRBASE, CCTXT, CQBASE, CRETENTION\n[QNAME,QPAIR,BSSTRAND,CRBASE,CQBASE]")), ToolInput(tag="in_consider_secondary_mapping", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="consider secondary mapping.")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="output.")), ToolInput(tag="in_cin_read", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biscuit_Cinread_V0_1_0().translate("wdl", allow_empty_container=True)


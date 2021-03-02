from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Fasta_Formatter_V0_1_0 = CommandToolBuilder(tool="fasta_formatter", base_command=["fasta_formatter"], inputs=[ToolInput(tag="in_e", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_w", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_aaaa_ag_gggg", input_type=String(), position=0, doc=InputDocumentation(doc="CCCCCTTTTT")), ToolInput(tag="in_agc_tn", input_type=String(), position=1, doc=InputDocumentation(doc="Output example with unlimited line width [-w 0]:")), ToolInput(tag="in_a_aaaagggggccccctttttagctn", input_type=String(), position=0, doc=InputDocumentation(doc="Output example with max. line width=7 [-w 7]:")), ToolInput(tag="in_aaaa_agg", input_type=String(), position=0, doc=InputDocumentation(doc="GGGTTTT")), ToolInput(tag="in_tccc_cca", input_type=String(), position=1, doc=InputDocumentation(doc="GCTN")), ToolInput(tag="in_my_id", input_type=String(), position=0, doc=InputDocumentation(doc="AAAAAGGGGGCCCCCTTTTAGCTN")), ToolInput(tag="in_aaa_ggg_ttt_ccc", input_type=String(), position=0, doc=InputDocumentation(doc=">EMPTY-SEQUENCE")), ToolInput(tag="in_aagtagtagtagtagt", input_type=String(), position=0, doc=InputDocumentation(doc="GTATTTTATAT"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Formatter_V0_1_0().translate("wdl", allow_empty_container=True)


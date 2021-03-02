from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Show_Ma_Asm_V0_1_0 = CommandToolBuilder(tool="show_ma_asm", base_command=["show-ma-asm"], inputs=[ToolInput(tag="in_count_gaps_printed", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Count gaps in printed consensus positions")), ToolInput(tag="in_print_snps_addition", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Print SNPs in addition to multialignments")), ToolInput(tag="in_print_alignments_unitigs", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Print alignments for unitig(s) with specfied uid(s)")), ToolInput(tag="in_display_code_version", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Display code version")), ToolInput(tag="in_uid", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_asm_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_frg_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Show_Ma_Asm_V0_1_0().translate("wdl", allow_empty_container=True)


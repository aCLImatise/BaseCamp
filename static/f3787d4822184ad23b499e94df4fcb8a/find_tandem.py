from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Find_Tandem_V0_1_0 = CommandToolBuilder(tool="find_tandem", base_command=["find-tandem"], inputs=[ToolInput(tag="in_multifasta_file_scan", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="multifasta file to scan")), ToolInput(tag="in_minimum_number_report", input_type=Int(optional=True), prefix="-u", doc=InputDocumentation(doc="minimum number of units to report (default: 3)")), ToolInput(tag="in_minimum_length_tandem", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="minimum length of tandem in bp (default: 8)")), ToolInput(tag="in_max_unit_length", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="max unit length (default: 4)")), ToolInput(tag="in_min_unit_length", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="min unit length (default: 1)")), ToolInput(tag="in_flanking_bp_report", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="flanking bp to report (default: 10)")), ToolInput(tag="in_find_tandems", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Tandem_V0_1_0().translate("wdl", allow_empty_container=True)


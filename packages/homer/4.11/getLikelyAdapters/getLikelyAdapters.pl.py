from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Getlikelyadapters_Pl_V0_1_0 = CommandToolBuilder(tool="getLikelyAdapters.pl", base_command=["getLikelyAdapters.pl"], inputs=[ToolInput(tag="in_len", input_type=Boolean(optional=True), prefix="-len", doc=InputDocumentation(doc="<#,#,...,#> (lengths of oligos to look for, default: 10,20,25,30)")), ToolInput(tag="in_number_reads_check", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="<#> (Number of reads to check for overrepresented oligos, default: 1e5)")), ToolInput(tag="in_number_report_default", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="<#> (number of overrepresented oligos to report, default: 10)")), ToolInput(tag="in_start", input_type=Boolean(optional=True), prefix="-start", doc=InputDocumentation(doc="<#> (position to start looking for oligos, default: 0)")), ToolInput(tag="in_end", input_type=Boolean(optional=True), prefix="-end", doc=InputDocumentation(doc="<#> (last position to look for oligos, default: end of sequence)")), ToolInput(tag="in_fast_q_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getlikelyadapters_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


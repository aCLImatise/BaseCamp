from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Krakenhll_Mpa_Report_V0_1_0 = CommandToolBuilder(tool="krakenhll_mpa_report", base_command=["krakenhll-mpa-report"], inputs=[ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Name of Kraken database\n(default: none)")), ToolInput(tag="in_show_zeros", input_type=Boolean(optional=True), prefix="--show-zeros", doc=InputDocumentation(doc="Display taxa even if they lack a read in any sample")), ToolInput(tag="in_header_line", input_type=Boolean(optional=True), prefix="--header-line", doc=InputDocumentation(doc="Display a header line indicating sample IDs\n(sample IDs are the filenames)")), ToolInput(tag="in_intermediate_ranks", input_type=Boolean(optional=True), prefix="--intermediate-ranks", doc=InputDocumentation(doc="Display taxa not at the standard ranks with x__ prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Krakenhll_Mpa_Report_V0_1_0().translate("wdl", allow_empty_container=True)


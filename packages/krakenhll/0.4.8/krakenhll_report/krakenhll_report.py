from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Krakenhll_Report_V0_1_0 = CommandToolBuilder(tool="krakenhll_report", base_command=["krakenhll-report"], inputs=[ToolInput(tag="in_show_zeros", input_type=Boolean(optional=True), prefix="--show-zeros", doc=InputDocumentation(doc="Show full taxonomy table.")), ToolInput(tag="in_tax_on_counts", input_type=Boolean(optional=True), prefix="--taxon-counts", doc=InputDocumentation(doc="Input files are in the format '<taxon ID><tab><count>' instead of Kraken output.")), ToolInput(tag="in_tax_on_list", input_type=Boolean(optional=True), prefix="--taxon-list", doc=InputDocumentation(doc="Input files is list of taxon IDs instead of Kraken output.")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Krakenhll_Report_V0_1_0().translate("wdl", allow_empty_container=True)


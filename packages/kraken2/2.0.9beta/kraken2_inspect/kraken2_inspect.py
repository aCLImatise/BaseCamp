from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Kraken2_Inspect_V0_1_0 = CommandToolBuilder(tool="kraken2_inspect", base_command=["kraken2-inspect"], inputs=[ToolInput(tag="in_db", input_type=Int(optional=True), prefix="--db", doc=InputDocumentation(doc="Name for Kraken 2 DB\n(default: none)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use")), ToolInput(tag="in_skip_counts", input_type=Boolean(optional=True), prefix="--skip-counts", doc=InputDocumentation(doc="Only print database summary statistics")), ToolInput(tag="in_use_mpa_style", input_type=Boolean(optional=True), prefix="--use-mpa-style", doc=InputDocumentation(doc="Format output like Kraken 1's kraken-mpa-report")), ToolInput(tag="in_report_zero_counts", input_type=Boolean(optional=True), prefix="--report-zero-counts", doc=InputDocumentation(doc="Report counts for ALL taxa, even if\ncounts are zero"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kraken2_Inspect_V0_1_0().translate("wdl", allow_empty_container=True)


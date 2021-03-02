from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Pgsatest_V0_1_0 = CommandToolBuilder(tool="PgSAtest", base_command=["PgSAtest"], inputs=[ToolInput(tag="in_by_position", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="by position")), ToolInput(tag="in_reads_uncorrecly_concatenated", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="reads (for uncorrecly concatenated pair-ended data)")), ToolInput(tag="in_filter", input_type=String(optional=True), prefix="-filter", doc=InputDocumentation(doc="reads (for compatibility with CGk tests)")), ToolInput(tag="in_c", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_repeats", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_test_km_ers", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_file", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pgsatest_V0_1_0().translate("wdl", allow_empty_container=True)


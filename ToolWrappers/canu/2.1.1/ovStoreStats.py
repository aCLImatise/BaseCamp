from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Ovstorestats_V0_1_0 = CommandToolBuilder(tool="ovStoreStats", base_command=["ovStoreStats"], inputs=[ToolInput(tag="in_expect_coverage_mean", input_type=Int(optional=True), prefix="-C", doc=InputDocumentation(doc="Expect coverage at mean (below 1/3 this is 'low coverage', above 5/3 is 'repeat')")), ToolInput(tag="in_write_stats_stdout", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Write stats to stdout, not to a file")), ToolInput(tag="in_report_processing_speed", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Report processing speed to stderr")), ToolInput(tag="in_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_6", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="")), ToolInput(tag="in_out_prefix_dot_per_read_dot_log", input_type=String(), position=0, doc=InputDocumentation(doc="One line per read, giving readID, read length and classification.")), ToolInput(tag="in_out_prefix_dot_summary", input_type=String(), position=1, doc=InputDocumentation(doc="The primary statistical output."))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ovstorestats_V0_1_0().translate("wdl")


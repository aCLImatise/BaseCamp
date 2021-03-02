from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Compute_V0_1_0 = CommandToolBuilder(tool="compute", base_command=["compute"], inputs=[ToolInput(tag="in_write_results_outfile", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=": write results to outfile")), ToolInput(tag="in_use_nth_sequence", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc=": use the nth sequence in the data as an outgroup")), ToolInput(tag="in_use_total_segregating", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": use the total # of segregating sites, rather than # of mutations")), ToolInput(tag="in_verbose_progress_reporting", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": verbose progress reporting to standard error")), ToolInput(tag="in__pretty_output", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc=": pretty output")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_V0_1_0().translate("wdl", allow_empty_container=True)


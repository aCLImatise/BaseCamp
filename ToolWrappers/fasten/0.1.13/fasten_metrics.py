from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fasten_Metrics_V0_1_0 = CommandToolBuilder(tool="fasten_metrics", base_command=["fasten_metrics"], inputs=[ToolInput(tag="in_num_cpus", input_type=Int(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="Number of CPUs (default: 1)")), ToolInput(tag="in_paired_end", input_type=Boolean(optional=True), prefix="--paired-end", doc=InputDocumentation(doc="The input reads are interleaved paired-end")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print more status messages")), ToolInput(tag="in_each_read", input_type=Boolean(optional=True), prefix="--each-read", doc=InputDocumentation(doc="Print the metrics for each read. This creates very\nlarge output")), ToolInput(tag="in_distribution", input_type=String(optional=True), prefix="--distribution", doc=InputDocumentation(doc="Print the distribution for each metric. Must supply\neither 'normal' or 'nonparametric'\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasten_Metrics_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Multi_Length_Hist_Py_V0_1_0 = CommandToolBuilder(tool="multi_length_hist.py", base_command=["multi_length_hist.py"], inputs=[ToolInput(tag="in_report_pdf", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report PDF.")), ToolInput(tag="in_input_format_fastq", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Input format (fastq).")), ToolInput(tag="in_number_of_bins", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Number of bins (50).")), ToolInput(tag="in_minimum_read_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Minimum read length (None).")), ToolInput(tag="in_maximum_read_length", input_type=Int(optional=True), prefix="-u", doc=InputDocumentation(doc="Maximum read length (None).")), ToolInput(tag="in_log_transform_lengths", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="Log transform lengths.")), ToolInput(tag="in_input_counts", input_type=String(), position=0, doc=InputDocumentation(doc="Input sequence files."))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multi_Length_Hist_Py_V0_1_0().translate("wdl")


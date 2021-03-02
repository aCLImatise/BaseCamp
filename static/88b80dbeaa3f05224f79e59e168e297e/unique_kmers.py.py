from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Float, File, String

Unique_Kmers_Py_V0_1_0 = CommandToolBuilder(tool="unique_kmers.py", base_command=["unique-kmers.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_quiet", input_type=Int(optional=True), prefix="--quiet", doc=InputDocumentation(doc="k-mer size to use (default: 32)")), ToolInput(tag="in_error_rate", input_type=Float(optional=True), prefix="--error-rate", doc=InputDocumentation(doc="Acceptable error rate (default: 0.01)")), ToolInput(tag="in_report", input_type=File(optional=True), prefix="--report", doc=InputDocumentation(doc="generate informational report and write to filename\n(default: None)")), ToolInput(tag="in_stream_records", input_type=Boolean(optional=True), prefix="--stream-records", doc=InputDocumentation(doc="write input sequences to STDOUT (default: False)")), ToolInput(tag="in_diagnostics", input_type=Boolean(optional=True), prefix="--diagnostics", doc=InputDocumentation(doc="print out recommended tablesize arguments and\nrestrictions (default: False)")), ToolInput(tag="in_input_sequence_filename", input_type=String(), position=0, doc=InputDocumentation(doc="Input FAST[AQ] sequence filename(s)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unique_Kmers_Py_V0_1_0().translate("wdl", allow_empty_container=True)


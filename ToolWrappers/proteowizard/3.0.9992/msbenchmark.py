from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Msbenchmark_V0_1_0 = CommandToolBuilder(tool="msbenchmark", base_command=["msbenchmark"], inputs=[ToolInput(tag="in_var_0", input_type=String(optional=True), prefix="--filter", doc=InputDocumentation(doc="")), ToolInput(tag="in_spectra_vertical_line_chromatograms_vertical_line_ramp_adapter_vertical_line_ramp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_binary_vertical_lineno_binary", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_another", input_type=String(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_6", input_type=String(optional=True), position=5, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msbenchmark_V0_1_0().translate("wdl")


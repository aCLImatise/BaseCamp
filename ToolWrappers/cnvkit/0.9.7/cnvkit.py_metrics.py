from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean, File

Cnvkit_Py_Metrics_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_metrics", base_command=["cnvkit.py", "metrics"], inputs=[ToolInput(tag="in_segments", input_type=Array(t=String(), optional=True), prefix="--segments", doc=InputDocumentation(doc="One or more segmentation data files (*.cns, output of\nthe 'segment' command). If more than one file is\ngiven, the number must match the coverage data files,\nin which case the input files will be paired together\nin the given order. Otherwise, the same segments will\nbe used for all coverage files.")), ToolInput(tag="in_drop_low_coverage", input_type=Boolean(optional=True), prefix="--drop-low-coverage", doc=InputDocumentation(doc="Drop very-low-coverage bins before calculations to\nreduce negative 'fat tail' of bin log2 values in poor-\nquality tumor samples.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output table file name.\n")), ToolInput(tag="in_cn_arrays", input_type=String(), position=0, doc=InputDocumentation(doc="One or more bin-level coverage data files (*.cnn,\n*.cnr)."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output table file name.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Metrics_V0_1_0().translate("wdl", allow_empty_container=True)


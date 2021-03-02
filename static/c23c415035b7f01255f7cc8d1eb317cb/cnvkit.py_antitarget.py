from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Cnvkit_Py_Antitarget_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_antitarget", base_command=["cnvkit.py", "antitarget"], inputs=[ToolInput(tag="in_access", input_type=File(optional=True), prefix="--access", doc=InputDocumentation(doc="Regions of accessible sequence on chromosomes (.bed),\nas output by genome2access.py.")), ToolInput(tag="in_avg_size", input_type=Int(optional=True), prefix="--avg-size", doc=InputDocumentation(doc="Average size of antitarget bins (results are\napproximate). [Default: 150000]")), ToolInput(tag="in_min_size", input_type=Int(optional=True), prefix="--min-size", doc=InputDocumentation(doc="Minimum size of antitarget bins (smaller regions are\ndropped). [Default: 1/16 avg size, calculated]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Antitarget_V0_1_0().translate("wdl", allow_empty_container=True)


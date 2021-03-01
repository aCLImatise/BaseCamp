from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Mapcounter_V0_1_0 = CommandToolBuilder(tool="mapCounter", base_command=["mapCounter"], inputs=[ToolInput(tag="in_seg", input_type=Boolean(optional=True), prefix="--seg", doc=InputDocumentation(doc="Outputs in SEG format")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Specify the size of non-overlapping windows [1000]")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="List all chromosomes in BigWig file")), ToolInput(tag="in_chromosome", input_type=String(optional=True), prefix="--chromosome", doc=InputDocumentation(doc="Specify the entries and order of sequences to analyze [ALL],\nthe <string> should be a comma-delimited list (NO spaces)")), ToolInput(tag="in_bigwig_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapcounter_V0_1_0().translate("wdl", allow_empty_container=True)


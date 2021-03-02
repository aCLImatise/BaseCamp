from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Npinv_V0_1_0 = CommandToolBuilder(tool="npinv", base_command=["npinv"], inputs=[ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="[String] file to write")), ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="[String] file to read")), ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="--region", doc=InputDocumentation(doc="[String] Specify the region for running.\nSuch as chr9:1-1000 OR chr9 OR all Default[all]")), ToolInput(tag="in_minal_n", input_type=Boolean(optional=True), prefix="--minAln", doc=InputDocumentation(doc="[int] minimum size for Alignment & Inv. Default[500]")), ToolInput(tag="in_ir_database", input_type=Boolean(optional=True), prefix="--IRdatabase", doc=InputDocumentation(doc="[String] An inverted repeat file for the reference in bed format. Default[none]")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="--min", doc=InputDocumentation(doc="[int] minimum size of an inversion. Default[500]")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="--max", doc=InputDocumentation(doc="[int] maximum size of an inversion. Default[10000]")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="--window", doc=InputDocumentation(doc="[int] minimun window size (bp) to merge inversion breakpoints. Default[2000]")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="--threshold", doc=InputDocumentation(doc="[int] minimum number of supporting reads for an inversion. Default[3]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Npinv_V0_1_0().translate("wdl", allow_empty_container=True)


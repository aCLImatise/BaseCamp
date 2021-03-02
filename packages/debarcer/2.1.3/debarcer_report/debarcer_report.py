from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int

Debarcer_Report_V0_1_0 = CommandToolBuilder(tool="debarcer_report", base_command=["debarcer", "report"], inputs=[ToolInput(tag="in_directory", input_type=Directory(optional=True), prefix="--Directory", doc=InputDocumentation(doc="Directory with subdirectories including Figures")), ToolInput(tag="in_extension", input_type=String(optional=True), prefix="--Extension", doc=InputDocumentation(doc="Figure format. Does not generate a report if pdf, even\nwith -r True. Default is png")), ToolInput(tag="in_sample", input_type=Directory(optional=True), prefix="--Sample", doc=InputDocumentation(doc="Sample name. Optional. Directory basename is sample\nname if not provided")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--MinCov", doc=InputDocumentation(doc="Minimum coverage value. Values below are plotted in\nred")), ToolInput(tag="in_min_ratio", input_type=Int(optional=True), prefix="--MinRatio", doc=InputDocumentation(doc="Minimum children to parent umi ratio. Values below are\nplotted in red")), ToolInput(tag="in_minum_is", input_type=String(optional=True), prefix="--MinUmis", doc=InputDocumentation(doc="Minimum umi count. Values below are plotted in red")), ToolInput(tag="in_min_children", input_type=Int(optional=True), prefix="--MinChildren", doc=InputDocumentation(doc="Minimum children umi count. Values below are plotted\nin red\n"))], outputs=[], container="quay.io/biocontainers/debarcer:2.1.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Debarcer_Report_V0_1_0().translate("wdl")


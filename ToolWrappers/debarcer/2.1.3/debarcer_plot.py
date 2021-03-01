from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Int

Debarcer_Plot_V0_1_0 = CommandToolBuilder(tool="debarcer_plot", base_command=["debarcer", "plot"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--Config", doc=InputDocumentation(doc="Path to the config file")), ToolInput(tag="in_directory", input_type=Directory(optional=True), prefix="--Directory", doc=InputDocumentation(doc="Directory with subdirectories ConsFiles and Datafiles")), ToolInput(tag="in_extension", input_type=String(optional=True), prefix="--Extension", doc=InputDocumentation(doc="Figure format. Does not generate a report if pdf, even\nwith -r True. Default is png")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--Sample", doc=InputDocumentation(doc="Sample name to apear in the report is reporting flag\nactivated. Optional")), ToolInput(tag="in_report", input_type=String(optional=True), prefix="--Report", doc=InputDocumentation(doc="Generate a report if activated. Default is True")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--MinCov", doc=InputDocumentation(doc="Minimum coverage value. Values below are plotted in\nred")), ToolInput(tag="in_min_ratio", input_type=Int(optional=True), prefix="--MinRatio", doc=InputDocumentation(doc="Minimum children to parent umi ratio. Values below are\nplotted in red")), ToolInput(tag="in_minum_is", input_type=String(optional=True), prefix="--MinUmis", doc=InputDocumentation(doc="Minimum umi count. Values below are plotted in red")), ToolInput(tag="in_min_children", input_type=Int(optional=True), prefix="--MinChildren", doc=InputDocumentation(doc="Minimum children umi count. Values below are plotted\nin red")), ToolInput(tag="in_ref_threshold", input_type=String(optional=True), prefix="--RefThreshold", doc=InputDocumentation(doc="Cut Y axis at non-ref frequency, the minimum frequency\nto consider a position variable\n"))], outputs=[], container="quay.io/biocontainers/debarcer:2.1.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Debarcer_Plot_V0_1_0().translate("wdl")


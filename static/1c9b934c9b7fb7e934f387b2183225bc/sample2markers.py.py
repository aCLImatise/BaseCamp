from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean, Int, Directory

Sample2Markers_Py_V0_1_0 = CommandToolBuilder(tool="sample2markers.py", base_command=["sample2markers.py"], inputs=[ToolInput(tag="in_input", input_type=Array(t=String(), optional=True), prefix="--input", doc=InputDocumentation(doc="The input samples as SAM or BAM files")), ToolInput(tag="in_sorted", input_type=Boolean(optional=True), prefix="--sorted", doc=InputDocumentation(doc="Whether the BAM input files are sorted. Default false")), ToolInput(tag="in_input_format", input_type=Int(optional=True), prefix="--input_format", doc=InputDocumentation(doc="The input samples format {bam, sam, bz2}. Default bz2")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="The output directory")), ToolInput(tag="in_breadth_threshold", input_type=Int(optional=True), prefix="--breadth_threshold", doc=InputDocumentation(doc="The breadth of coverage threshold for the consensus\nmarkers. Default 80 (%)")), ToolInput(tag="in_nprocs", input_type=Int(optional=True), prefix="--nprocs", doc=InputDocumentation(doc="The number of threads to execute the script\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="The output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sample2Markers_Py_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Rtk_V0_1_0 = CommandToolBuilder(tool="rtk", base_command=["rtk"], inputs=[ToolInput(tag="in_path_txt_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="path to an .txt file (tab delimited) to rarefy")), ToolInput(tag="in_path_output_directory", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="path to a output directory")), ToolInput(tag="in_depth_multiple_comma", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Depth or multiple comma seperated depths to rarefy to. Default is 0.95 times the minimal column sum.")), ToolInput(tag="in_number_times_create", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Number of times to create diversity measures. Default is 10.")), ToolInput(tag="in_number_rarefied_write", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="Number of rarefied tables to write.")), ToolInput(tag="in_number_threads_use", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of threads to use. Default: 1")), ToolInput(tag="in_ns", input_type=Boolean(optional=True), prefix="-ns", doc=InputDocumentation(doc="If set, no temporary files will be used when writing rarefaction tables to disk."))], outputs=[ToolOutput(tag="out_path_output_directory", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_output_directory", type_hint=File()), doc=OutputDocumentation(doc="path to a output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtk_V0_1_0().translate("wdl", allow_empty_container=True)


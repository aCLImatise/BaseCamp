from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int, Boolean, File

Phyluce_Align_Convert_One_Align_To_Another_V0_1_0 = CommandToolBuilder(tool="phyluce_align_convert_one_align_to_another", base_command=["phyluce_align_convert_one_align_to_another"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing the alignments to convert.")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="An output directory to hold the converted alignments.")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="The input alignment format")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of compute cores to use")), ToolInput(tag="in_shorten_names", input_type=Boolean(optional=True), prefix="--shorten-names", doc=InputDocumentation(doc="Convert names to a 6 or 7 character representation")), ToolInput(tag="in_name_conf", input_type=File(optional=True), prefix="--name-conf", doc=InputDocumentation(doc="A config-formatted file containing full-name:shortname\nmappings")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs."))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An output directory to hold the converted alignments."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Convert_One_Align_To_Another_V0_1_0().translate("wdl", allow_empty_container=True)


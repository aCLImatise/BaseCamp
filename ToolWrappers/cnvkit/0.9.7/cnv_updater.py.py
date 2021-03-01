from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Cnv_Updater_Py_V0_1_0 = CommandToolBuilder(tool="cnv_updater.py", base_command=["cnv_updater.py"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory to write output .cnn files.")), ToolInput(tag="in_suffix", input_type=File(optional=True), prefix="--suffix", doc=InputDocumentation(doc="Filename suffix to add before the '.cnn' extension in\noutput files. [Default: .updated]\n")), ToolInput(tag="in_cnn_files", input_type=String(), position=0, doc=InputDocumentation(doc="CNVkit coverage files to update (*.targetcoverage.cnn,\n*.antitargetcoverage.cnn)."))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory to write output .cnn files.")), ToolOutput(tag="out_suffix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_suffix", type_hint=File()), doc=OutputDocumentation(doc="Filename suffix to add before the '.cnn' extension in\noutput files. [Default: .updated]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnv_Updater_Py_V0_1_0().translate("wdl", allow_empty_container=True)


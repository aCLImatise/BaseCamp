from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Directory, Int

Hicqc_V0_1_0 = CommandToolBuilder(tool="hicQC", base_command=["hicQC"], inputs=[ToolInput(tag="in_log_files", input_type=Array(t=String(), optional=True), prefix="--logfiles", doc=InputDocumentation(doc="Path to the log files to be processed")), ToolInput(tag="in_labels", input_type=Array(t=String(), optional=True), prefix="--labels", doc=InputDocumentation(doc="Label to assign to each log file. Each label should be\nseparated by a space. Quote labels that contain\nspaces: E.g. --labels label1 'labels 2'")), ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--outputFolder", doc=InputDocumentation(doc="Several files with be saved under this folder: A table\ncontaining the results and a html file with several\nimages.")), ToolInput(tag="in_dpi", input_type=Int(optional=True), prefix="--dpi", doc=InputDocumentation(doc="Image resolution. By default high resolution png\nimages with a 200 dpi are created."))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Several files with be saved under this folder: A table\ncontaining the results and a html file with several\nimages."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicqc_V0_1_0().translate("wdl", allow_empty_container=True)


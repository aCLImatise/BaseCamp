from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Gcloud_Info_V0_1_0 = CommandToolBuilder(tool="gcloud_info", base_command=["gcloud", "info"], inputs=[ToolInput(tag="in_anonymize", input_type=Boolean(optional=True), prefix="--anonymize", doc=InputDocumentation(doc="Minimize any personal identifiable information. Use it when sharing\noutput with others.")), ToolInput(tag="in_run_diagnostics", input_type=Boolean(optional=True), prefix="--run-diagnostics", doc=InputDocumentation(doc="Run diagnostics on your installation of the Cloud SDK.")), ToolInput(tag="in_show_log", input_type=Boolean(optional=True), prefix="--show-log", doc=InputDocumentation(doc="Print the contents of the last log file.")), ToolInput(tag="in_connectivity_dot", input_type=String(), position=0, doc=InputDocumentation(doc="o gcloud info --show-log prints the contents of the most recent log")), ToolInput(tag="in_file_dot", input_type=File(), position=1, doc=InputDocumentation(doc="FLAGS"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Info_V0_1_0().translate("wdl", allow_empty_container=True)


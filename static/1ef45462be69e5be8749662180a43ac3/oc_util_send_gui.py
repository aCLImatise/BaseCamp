from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Oc_Util_Send_Gui_V0_1_0 = CommandToolBuilder(tool="oc_util_send_gui", base_command=["oc", "util", "send-gui"], inputs=[ToolInput(tag="in_user", input_type=String(optional=True), prefix="--user", doc=InputDocumentation(doc="User who will own the job. Defaults to single user\ndefault user.\n")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc="Path to result database"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oc_Util_Send_Gui_V0_1_0().translate("wdl")


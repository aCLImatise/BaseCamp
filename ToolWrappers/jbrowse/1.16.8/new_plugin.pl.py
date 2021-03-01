from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

New_Plugin_Pl_V0_1_0 = CommandToolBuilder(tool="new_plugin.pl", base_command=["new-plugin.pl"], inputs=[ToolInput(tag="in_plugin_dot", input_type=String(), position=0, doc=InputDocumentation(doc="USAGE\nbin/new-plugin.pl MyNewPlugin\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    New_Plugin_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Kill_Pyro_Mip_Servers_V0_1_0 = CommandToolBuilder(tool="kill_pyro_mip_servers", base_command=["kill_pyro_mip_servers"], inputs=[ToolInput(tag="in_at_call_aside", input_type=String(), position=0, doc=InputDocumentation(doc="File '/usr/local/lib/python3.4/site-packages/pkg_resources/__init__.py', line 2962, in _call_aside"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kill_Pyro_Mip_Servers_V0_1_0().translate("wdl", allow_empty_container=True)


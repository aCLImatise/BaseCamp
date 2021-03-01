from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ansible_Galaxy_V0_1_0 = CommandToolBuilder(tool="ansible_galaxy", base_command=["ansible-galaxy"], inputs=[ToolInput(tag="in_in_it_vertical_line_info_vertical_line_install_vertical_line_list_vertical_line_remove", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ansible_Galaxy_V0_1_0().translate("wdl", allow_empty_container=True)


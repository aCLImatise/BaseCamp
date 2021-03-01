from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Ansible_Doc_V0_1_0 = CommandToolBuilder(tool="ansible_doc", base_command=["ansible-doc"], inputs=[ToolInput(tag="in_module_path", input_type=File(optional=True), prefix="--module-path", doc=InputDocumentation(doc="Ansible modules/ directory")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="List available modules")), ToolInput(tag="in_snippet", input_type=Boolean(optional=True), prefix="--snippet", doc=InputDocumentation(doc="Show playbook snippet for specified module(s)")), ToolInput(tag="in_show_version_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Show version number and exit")), ToolInput(tag="in_module_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ansible_Doc_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Nebulizer_Update_Tool_V0_1_0 = CommandToolBuilder(tool="nebulizer_update_tool", base_command=["nebulizer", "update_tool"], inputs=[ToolInput(tag="in_install_tool_dependencies", input_type=Boolean(optional=True), prefix="--install-tool-dependencies", doc=InputDocumentation(doc="[yes|no]\ninstall tool dependencies via the toolshed,\nif any are defined (default is 'yes')")), ToolInput(tag="in_install_repository_dependencies", input_type=Boolean(optional=True), prefix="--install-repository-dependencies", doc=InputDocumentation(doc="[yes|no]\ninstall repository dependencies via the\ntoolshed, if any are defined (default is\n'yes')")), ToolInput(tag="in_install_resolver_dependencies", input_type=Boolean(optional=True), prefix="--install-resolver-dependencies", doc=InputDocumentation(doc="[yes|no]\ninstall dependencies through a resolver that\nsupports installation (e.g. conda) (default\nis 'yes')")), ToolInput(tag="in_timeout", input_type=Int(optional=True), prefix="--timeout", doc=InputDocumentation(doc="wait up to TIMEOUT seconds for tool\ninstallationsto complete (default is 600).")), ToolInput(tag="in_no_wait", input_type=Boolean(optional=True), prefix="--no-wait", doc=InputDocumentation(doc="don't wait for lengthy tool installations to")), ToolInput(tag="in_fast_qc", input_type=String(), position=0, doc=InputDocumentation(doc="The tool must already be present in GALAXY and a newer changeset revision")), ToolInput(tag="in_complete_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--check-toolshed                check installed revisions directly against"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Update_Tool_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Nextstrain_View_V0_1_0 = CommandToolBuilder(tool="nextstrain_view", base_command=["nextstrain", "view"], inputs=[ToolInput(tag="in_help_all", input_type=Boolean(optional=True), prefix="--help-all", doc=InputDocumentation(doc="Show a full help message of all options and exit")), ToolInput(tag="in_allow_remote_access", input_type=Boolean(optional=True), prefix="--allow-remote-access", doc=InputDocumentation(doc="Allow other computers on the network to access the\nwebsite (default: False)")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="--port", doc=InputDocumentation(doc="Listen on the given port instead of the default port")), ToolInput(tag="in_run_again_see", input_type=Int(), position=0, doc=InputDocumentation(doc="Run again with --help-all instead to see more options."))], outputs=[], container="quay.io/biocontainers/nextstrain-cli:3.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextstrain_View_V0_1_0().translate("wdl")


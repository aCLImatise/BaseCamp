from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, Directory

Galaxy_Tool_Test_V0_1_0 = CommandToolBuilder(tool="galaxy_tool_test", base_command=["galaxy-tool-test"], inputs=[ToolInput(tag="in_galaxy_url", input_type=String(optional=True), prefix="--galaxy-url", doc=InputDocumentation(doc="Galaxy URL")), ToolInput(tag="in_key", input_type=String(optional=True), prefix="--key", doc=InputDocumentation(doc="Galaxy User API Key")), ToolInput(tag="in_admin_key", input_type=String(optional=True), prefix="--admin-key", doc=InputDocumentation(doc="Galaxy Admin API Key")), ToolInput(tag="in_force_path_paste", input_type=Boolean(optional=True), prefix="--force_path_paste", doc=InputDocumentation(doc="This requires Galaxy-side config option\n'allow_path_paste' enabled. Allows for fetching test\ndata locally. Only for admins.")), ToolInput(tag="in_tool_id", input_type=String(optional=True), prefix="--tool-id", doc=InputDocumentation(doc="Tool ID")), ToolInput(tag="in_tool_version", input_type=String(optional=True), prefix="--tool-version", doc=InputDocumentation(doc="Tool Version")), ToolInput(tag="in_test_index", input_type=Int(optional=True), prefix="--test-index", doc=InputDocumentation(doc="Tool Test Index (starting at 0) - by default all tests\nwill run.")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="directory to dump outputs to")), ToolInput(tag="in_append", input_type=Boolean(optional=True), prefix="--append", doc=InputDocumentation(doc="Extend a test record json (created with --output-json)\nwith additional tests.")), ToolInput(tag="in_output_json", input_type=String(optional=True), prefix="--output-json", doc=InputDocumentation(doc="output metadata json")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose logging.")), ToolInput(tag="in_client_test_config", input_type=String(optional=True), prefix="--client-test-config", doc=InputDocumentation(doc="Test config YAML to help with client testing\n"))], outputs=[], container="quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Galaxy_Tool_Test_V0_1_0().translate("wdl")


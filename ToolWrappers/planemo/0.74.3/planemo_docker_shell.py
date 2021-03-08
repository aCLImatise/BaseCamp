from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Planemo_Docker_Shell_V0_1_0 = CommandToolBuilder(tool="planemo_docker_shell", base_command=["planemo", "docker_shell"], inputs=[ToolInput(tag="in_from_tag", input_type=Boolean(optional=True), prefix="--from_tag", doc=InputDocumentation(doc="Treat the tool's Docker container identifier\nas a locally cached tag.")), ToolInput(tag="in_shell", input_type=String(optional=True), prefix="--shell", doc=InputDocumentation(doc="Shell to launch in container (defaults to\n/bin/bash).")), ToolInput(tag="in_docker_cmd", input_type=String(optional=True), prefix="--docker_cmd", doc=InputDocumentation(doc="Command used to launch docker (defaults to\ndocker).")), ToolInput(tag="in_no_docker_sudo", input_type=Boolean(optional=True), prefix="--no_docker_sudo", doc=InputDocumentation(doc="Flag to use sudo when running docker.")), ToolInput(tag="in_docker_sudo_cmd", input_type=String(optional=True), prefix="--docker_sudo_cmd", doc=InputDocumentation(doc="sudo command to use when --docker_sudo is\nenabled (defaults to sudo).")), ToolInput(tag="in_docker_host", input_type=String(optional=True), prefix="--docker_host", doc=InputDocumentation(doc="Docker host to target when executing docker\ncommands (defaults to localhost).")), ToolInput(tag="in_tool_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Docker_Shell_V0_1_0().translate("wdl")


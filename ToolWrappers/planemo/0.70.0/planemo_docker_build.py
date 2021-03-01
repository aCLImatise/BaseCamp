from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Planemo_Docker_Build_V0_1_0 = CommandToolBuilder(tool="planemo_docker_build", base_command=["planemo", "docker_build"], inputs=[ToolInput(tag="in_docker_image_cache", input_type=String(optional=True), prefix="--docker_image_cache", doc=InputDocumentation(doc="Command used to launch docker (defaults to\ndocker).")), ToolInput(tag="in_no_docker_sudo", input_type=Boolean(optional=True), prefix="--no_docker_sudo", doc=InputDocumentation(doc="Flag to use sudo when running docker.")), ToolInput(tag="in_docker_sudo_cmd", input_type=String(optional=True), prefix="--docker_sudo_cmd", doc=InputDocumentation(doc="sudo command to use when --docker_sudo is\nenabled (defaults to sudo).")), ToolInput(tag="in_docker_host", input_type=String(optional=True), prefix="--docker_host", doc=InputDocumentation(doc="Docker host to target when executing docker\ncommands (defaults to localhost).")), ToolInput(tag="in_image_dot", input_type=String(), position=0, doc=InputDocumentation(doc="% planemo docker_build bowtie2.xml # asssumes Dockerfile in same dir\n% planemo docker_shell --from_tag bowtie2.xml"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Docker_Build_V0_1_0().translate("wdl", allow_empty_container=True)


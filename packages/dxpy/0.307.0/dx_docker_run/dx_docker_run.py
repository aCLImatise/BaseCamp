from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean

Dx_Docker_Run_V0_1_0 = CommandToolBuilder(tool="dx_docker_run", base_command=["dx-docker", "run"], inputs=[ToolInput(tag="in_volume", input_type=Directory(optional=True), prefix="--volume", doc=InputDocumentation(doc="Directory to mount inside the container. Can be\nsupplied multiple times (e.g. -v /mnt/data:/mnt/data\n-v /host:/guest")), ToolInput(tag="in_env", input_type=String(optional=True), prefix="--env", doc=InputDocumentation(doc="Environment variables to set within container. Can be\nsupplied multiple times (e.g. -e foo=bar -e pizza=pie")), ToolInput(tag="in_entry_point", input_type=String(optional=True), prefix="--entrypoint", doc=InputDocumentation(doc="Overwrite default entry point for image")), ToolInput(tag="in_workdir", input_type=Directory(optional=True), prefix="--workdir", doc=InputDocumentation(doc="Working directory")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress printing of image metadata")), ToolInput(tag="in_rootfs", input_type=Directory(optional=True), prefix="--rootfs", doc=InputDocumentation(doc="Use directory pointed to here for rootfs instead of\nextracting the image (for expert use/development\npurposes)")), ToolInput(tag="in_rm", input_type=Boolean(optional=True), prefix="--rm", doc=InputDocumentation(doc="Automatically remove the container when it exits")), ToolInput(tag="in_user", input_type=String(optional=True), prefix="--user", doc=InputDocumentation(doc="User to execute command as: *currently ignored*")), ToolInput(tag="in_image", input_type=String(), position=0, doc=InputDocumentation(doc="image name")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="command to run within container"))], outputs=[], container="quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Docker_Run_V0_1_0().translate("wdl")


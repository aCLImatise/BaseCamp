from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Gcloud_Docker_V0_1_0 = CommandToolBuilder(tool="gcloud_docker", base_command=["gcloud", "docker"], inputs=[ToolInput(tag="in_authorize_only", input_type=Boolean(optional=True), prefix="--authorize-only", doc=InputDocumentation(doc="Configure docker authorization only, do not launch the docker\ncommand-line.")), ToolInput(tag="in_docker_host", input_type=File(optional=True), prefix="--docker-host", doc=InputDocumentation(doc="The URL to connect to Docker Daemon. Format: tcp://host:port or\nunix:///path/to/socket.")), ToolInput(tag="in_server", input_type=String(optional=True), prefix="--server", doc=InputDocumentation(doc=",[SERVER,...], -s SERVER,[SERVER,...]; default='gcr.io,us.gcr.io,eu.gcr.io,asia.gcr.io,l.gcr.io,launcher.gcr.io,us-mirror.gcr.io,eu-mirror.gcr.io,asia-mirror.gcr.io,mirror.gcr.io'\nThe address of the Google Cloud Registry.")), ToolInput(tag="in_registry", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_directly_dot", input_type=String(), position=0, doc=InputDocumentation(doc="More information on Google Container Registry can be found here:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Docker_V0_1_0().translate("wdl", allow_empty_container=True)


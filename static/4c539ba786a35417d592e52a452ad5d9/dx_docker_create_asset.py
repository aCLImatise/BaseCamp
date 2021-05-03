from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Dx_Docker_Create_Asset_V0_1_0 = CommandToolBuilder(tool="dx_docker_create_asset", base_command=["dx-docker", "create-asset"], inputs=[ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output_path", doc=InputDocumentation(doc="Project ID and path in project to upload image to\n(defaults to project root)")), ToolInput(tag="in_alternative_export", input_type=Boolean(optional=True), prefix="--alternative_export", doc=InputDocumentation(doc="EXPERT ONLY: Use alternative method to export Docker\nimage since Docker CLI export sometimes doesn't create\nthe root filesystem properly.")), ToolInput(tag="in_ubuntu_version", input_type=String(optional=True), prefix="--ubuntu_version", doc=InputDocumentation(doc="Ubuntu version")), ToolInput(tag="in_asset_version", input_type=String(optional=True), prefix="--asset_version", doc=InputDocumentation(doc="Asset version\n"))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="Project ID and path in project to upload image to\n(defaults to project root)"))], container="quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Docker_Create_Asset_V0_1_0().translate("wdl")


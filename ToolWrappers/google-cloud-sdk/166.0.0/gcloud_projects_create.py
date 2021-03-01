from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gcloud_Projects_Create_V0_1_0 = CommandToolBuilder(tool="gcloud_projects_create", base_command=["gcloud", "projects", "create"], inputs=[ToolInput(tag="in_enable_cloud_apis", input_type=Boolean(optional=True), prefix="--enable-cloud-apis", doc=InputDocumentation(doc="Enable cloudapis.googleapis.com during creation. Enabled by default,\nuse --no-enable-cloud-apis to disable.")), ToolInput(tag="in_labels", input_type=Boolean(optional=True), prefix="--labels", doc=InputDocumentation(doc="=[KEY=VALUE,...]\nA list of label KEY=VALUE pairs to add.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Name for the project you want to create. If not specified, will use\nproject id as name.")), ToolInput(tag="in_organization", input_type=String(optional=True), prefix="--organization", doc=InputDocumentation(doc="ID for the organization to use as a parent")), ToolInput(tag="in_set_as_default", input_type=Boolean(optional=True), prefix="--set-as-default", doc=InputDocumentation(doc="Set newly created project as [core.project] property.")), ToolInput(tag="in_characters_dot", input_type=String(), position=0, doc=InputDocumentation(doc="FLAGS"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Projects_Create_V0_1_0().translate("wdl", allow_empty_container=True)


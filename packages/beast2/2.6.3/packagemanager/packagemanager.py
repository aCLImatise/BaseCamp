from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Packagemanager_V0_1_0 = CommandToolBuilder(tool="packagemanager", base_command=["packagemanager"], inputs=[ToolInput(tag="in_list", input_type=String(optional=True), prefix="-list", doc=InputDocumentation(doc="available packages")), ToolInput(tag="in_add", input_type=String(optional=True), prefix="-add", doc=InputDocumentation(doc="the <NAME> package")), ToolInput(tag="in_del", input_type=String(optional=True), prefix="-del", doc=InputDocumentation(doc="the <NAME> package")), ToolInput(tag="in_version", input_type=String(optional=True), prefix="-version", doc=InputDocumentation(doc="package version")), ToolInput(tag="in_use_app_dir", input_type=Directory(optional=True), prefix="-useAppDir", doc=InputDocumentation(doc="application (system wide) installation directory. Note this requires writing rights to the application directory. If not specified, the user's BEAST directory will be used.")), ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="-dir", doc=InputDocumentation(doc="/uninstall package in directory <DIR>. This overrides the useAppDir option")), ToolInput(tag="in_update", input_type=String(optional=True), prefix="-update", doc=InputDocumentation(doc="for updates, and ask to install if available")), ToolInput(tag="in_update_now", input_type=String(optional=True), prefix="-updatenow", doc=InputDocumentation(doc="for updates and install without asking"))], outputs=[], container="quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Packagemanager_V0_1_0().translate("wdl")


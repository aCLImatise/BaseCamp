from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, File

Synapse_Create_V0_1_0 = CommandToolBuilder(tool="synapse_create", base_command=["synapse", "create"], inputs=[ToolInput(tag="in_parentid", input_type=Int(optional=True), prefix="--parentid", doc=InputDocumentation(doc="Synapse ID of project or folder where to place folder\n[not used with project]")), ToolInput(tag="in_name", input_type=Directory(optional=True), prefix="--name", doc=InputDocumentation(doc="Name of folder/project.")), ToolInput(tag="in_description", input_type=Directory(optional=True), prefix="--description", doc=InputDocumentation(doc="Description of project/folder")), ToolInput(tag="in_description_file", input_type=File(optional=True), prefix="--descriptionFile", doc=InputDocumentation(doc="Path to a markdown file containing description of\nproject/folder\n"))], outputs=[], container="quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Create_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Arv_Copy_V0_1_0 = CommandToolBuilder(tool="arv_copy", base_command=["arv-copy"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output.")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Report progress on copying collections. (default)")), ToolInput(tag="in_no_progress", input_type=Boolean(optional=True), prefix="--no-progress", doc=InputDocumentation(doc="Do not report progress on copying collections.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Perform copy even if the object appears to exist at\nthe remote destination.")), ToolInput(tag="in_src", input_type=File(optional=True), prefix="--src", doc=InputDocumentation(doc="The name of the source Arvados instance (required) -\npoints at an Arvados config file. May be either a\npathname to a config file, or (for example) 'foo' as\nshorthand for $HOME/.config/arvados/foo.conf.")), ToolInput(tag="in_dst", input_type=File(optional=True), prefix="--dst", doc=InputDocumentation(doc="The name of the destination Arvados instance\n(required) - points at an Arvados config file. May be\neither a pathname to a config file, or (for example)\n'foo' as shorthand for $HOME/.config/arvados/foo.conf.")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Recursively copy any dependencies for this object, and\nsubprojects. (default)")), ToolInput(tag="in_no_recursive", input_type=Boolean(optional=True), prefix="--no-recursive", doc=InputDocumentation(doc="Do not copy any dependencies or subprojects.")), ToolInput(tag="in_project_uuid", input_type=String(optional=True), prefix="--project-uuid", doc=InputDocumentation(doc="The UUID of the project at the destination to which\nthe collection or workflow should be copied.")), ToolInput(tag="in_retries", input_type=Int(optional=True), prefix="--retries", doc=InputDocumentation(doc="Maximum number of times to retry server requests that\nencounter temporary failures (e.g., server down).\nDefault 3.\n"))], outputs=[], container="quay.io/biocontainers/arvados-python-client:2.1.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arv_Copy_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Directory, Boolean

Cromwell_V0_1_0 = CommandToolBuilder(tool="cromwell", base_command=["cromwell"], inputs=[ToolInput(tag="in_workflow_root", input_type=String(optional=True), prefix="--workflow-root", doc=InputDocumentation(doc="Workflow root.")), ToolInput(tag="in_inputs", input_type=File(optional=True), prefix="--inputs", doc=InputDocumentation(doc="Workflow inputs file.")), ToolInput(tag="in_options", input_type=File(optional=True), prefix="--options", doc=InputDocumentation(doc="Workflow options file.")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Workflow type.")), ToolInput(tag="in_type_version", input_type=String(optional=True), prefix="--type-version", doc=InputDocumentation(doc="Workflow type version.")), ToolInput(tag="in_labels", input_type=File(optional=True), prefix="--labels", doc=InputDocumentation(doc="Workflow labels file.")), ToolInput(tag="in_imports", input_type=Directory(optional=True), prefix="--imports", doc=InputDocumentation(doc="A directory or zipfile to search for workflow imports.")), ToolInput(tag="in_metadata_output", input_type=File(optional=True), prefix="--metadata-output", doc=InputDocumentation(doc="An optional directory path to output metadata.")), ToolInput(tag="in_host", input_type=String(optional=True), prefix="--host", doc=InputDocumentation(doc="Cromwell server URL.")), ToolInput(tag="in_jar", input_type=Boolean(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_metadata_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_metadata_output", type_hint=File()), doc=OutputDocumentation(doc="An optional directory path to output metadata."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cromwell_V0_1_0().translate("wdl", allow_empty_container=True)


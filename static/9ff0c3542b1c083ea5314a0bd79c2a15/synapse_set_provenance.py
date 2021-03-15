from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, Directory

Synapse_Set_Provenance_V0_1_0 = CommandToolBuilder(tool="synapse_set_provenance", base_command=["synapse", "set-provenance"], inputs=[ToolInput(tag="in_id", input_type=Int(optional=True), prefix="--id", doc=InputDocumentation(doc="Synapse ID of entity whose provenance we are\naccessing.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Name of the activity that generated the entity")), ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="Description of the activity that generated the entity")), ToolInput(tag="in_output_provenance_record", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[OUTPUT_FILE], -output [OUTPUT_FILE], --output [OUTPUT_FILE]\nOutput the provenance record in JSON format")), ToolInput(tag="in_used", input_type=Boolean(optional=True), prefix="-used", doc=InputDocumentation(doc="[target ...], --used [target ...]\nSynapse ID, a url, or a local file path (of a file\npreviouslyuploaded to Synapse) from which the\nspecified entity is derived")), ToolInput(tag="in_executed", input_type=Boolean(optional=True), prefix="-executed", doc=InputDocumentation(doc="[target ...], --executed [target ...]\nSynapse ID, a url, or a local file path (of a file\npreviouslyuploaded to Synapse) that was executed to\ngenerate the specified entity")), ToolInput(tag="in_limit_search", input_type=Directory(optional=True), prefix="--limitSearch", doc=InputDocumentation(doc="Synapse ID of a container such as project or folder to\nlimit search for provenance files.\n"))], outputs=[], container="quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Set_Provenance_V0_1_0().translate("wdl")


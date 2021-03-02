from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Boolean

Synapse_Submit_V0_1_0 = CommandToolBuilder(tool="synapse_submit", base_command=["synapse", "submit"], inputs=[ToolInput(tag="in_evaluation_id", input_type=File(optional=True), prefix="--evaluationID", doc=InputDocumentation(doc="Evaluation ID where the entity/file will be submitted")), ToolInput(tag="in_evaluation_name", input_type=File(optional=True), prefix="--evaluationName", doc=InputDocumentation(doc="Evaluation Name where the entity/file will be\nsubmitted")), ToolInput(tag="in_entity_id", input_type=String(optional=True), prefix="--entityId", doc=InputDocumentation(doc="Synapse ID of the entity to be submitted")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="File to be submitted to the challenge")), ToolInput(tag="in_parentid", input_type=Directory(optional=True), prefix="--parentId", doc=InputDocumentation(doc="Synapse ID of project or folder where to upload data")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Name of the submission")), ToolInput(tag="in_team_name", input_type=String(optional=True), prefix="--teamName", doc=InputDocumentation(doc="Submit of behalf of a registered team")), ToolInput(tag="in_submitter_alias", input_type=String(optional=True), prefix="--submitterAlias", doc=InputDocumentation(doc="A nickname, possibly for display in leaderboards")), ToolInput(tag="in_used", input_type=Boolean(optional=True), prefix="--used", doc=InputDocumentation(doc="[target [target ...]]\nSynapse ID, a url, or a local file path (of a file\npreviouslyuploaded to Synapse) from which the\nspecified entity is derived")), ToolInput(tag="in_executed", input_type=Boolean(optional=True), prefix="--executed", doc=InputDocumentation(doc="[target [target ...]]\nSynapse ID, a url, or a local file path (of a file\npreviouslyuploaded to Synapse) that was executed to\ngenerate the specified entity")), ToolInput(tag="in_limit_search", input_type=Directory(optional=True), prefix="--limitSearch", doc=InputDocumentation(doc="Synapse ID of a container such as project or folder to\nlimit search for provenance files.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Submit_V0_1_0().translate("wdl", allow_empty_container=True)


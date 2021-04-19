from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Parsec_Histories_Update_History_V0_1_0 = CommandToolBuilder(tool="parsec_histories_update_history", base_command=["parsec", "histories", "update_history"], inputs=[ToolInput(tag="in_annotation", input_type=String(optional=True), prefix="--annotation", doc=InputDocumentation(doc="Replace history annotation with given string")), ToolInput(tag="in_deleted", input_type=Boolean(optional=True), prefix="--deleted", doc=InputDocumentation(doc="Mark or unmark history as deleted")), ToolInput(tag="in_importable", input_type=Boolean(optional=True), prefix="--importable", doc=InputDocumentation(doc="Mark or unmark history as importable")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Replace history name with the given string")), ToolInput(tag="in_published", input_type=Boolean(optional=True), prefix="--published", doc=InputDocumentation(doc="Mark or unmark history as published")), ToolInput(tag="in_purged", input_type=Boolean(optional=True), prefix="--purged", doc=InputDocumentation(doc="If ``True``, mark history as purged (permanently\ndeleted).")), ToolInput(tag="in_tags", input_type=String(optional=True), prefix="--tags", doc=InputDocumentation(doc="Replace history tags with the given list")), ToolInput(tag="in_history_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Update_History_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Anvi_Delete_Collection_V0_1_0 = CommandToolBuilder(tool="anvi_delete_collection", base_command=["anvi-delete-collection"], inputs=[ToolInput(tag="in_profile_db", input_type=String(optional=True), prefix="--profile-db", doc=InputDocumentation(doc="Anvi'o profile database (default: None)")), ToolInput(tag="in_collection_name", input_type=String(optional=True), prefix="--collection-name", doc=InputDocumentation(doc="Collection name. (default: None)")), ToolInput(tag="in_list_collections", input_type=Boolean(optional=True), prefix="--list-collections", doc=InputDocumentation(doc="Show available collections and exit. (default: False)"))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Delete_Collection_V0_1_0().translate("wdl")


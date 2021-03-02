from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bioprov_V0_1_0 = CommandToolBuilder(tool="bioprov", base_command=["bioprov"], inputs=[ToolInput(tag="in_show_config", input_type=Boolean(optional=True), prefix="--show_config", doc=InputDocumentation(doc="Show location of config file.")), ToolInput(tag="in_show_prov_store", input_type=Boolean(optional=True), prefix="--show_provstore", doc=InputDocumentation(doc="Show location of ProvStore credentials file.")), ToolInput(tag="in_create_prov_store", input_type=Boolean(optional=True), prefix="--create_provstore", doc=InputDocumentation(doc="Create ProvStore file credentials file.")), ToolInput(tag="in_show_db", input_type=Boolean(optional=True), prefix="--show_db", doc=InputDocumentation(doc="Show location of database file.")), ToolInput(tag="in_clear_db", input_type=Boolean(optional=True), prefix="--clear_db", doc=InputDocumentation(doc="Clears all records in database.")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="List Projects in the BioProv database."))], outputs=[], container="quay.io/biocontainers/bioprov:0.1.22--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioprov_V0_1_0().translate("wdl")


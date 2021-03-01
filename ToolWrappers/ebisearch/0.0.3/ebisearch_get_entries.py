from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Ebisearch_Get_Entries_V0_1_0 = CommandToolBuilder(tool="ebisearch_get_entries", base_command=["ebisearch", "get_entries"], inputs=[ToolInput(tag="in_domain", input_type=String(optional=True), prefix="--domain", doc=InputDocumentation(doc="Domain id in EBI (accessible with get_domains)")), ToolInput(tag="in_entry_id", input_type=String(optional=True), prefix="--entry_id", doc=InputDocumentation(doc="(Multiple) Entry identifier to retrieve")), ToolInput(tag="in_field", input_type=String(optional=True), prefix="--field", doc=InputDocumentation(doc="(Multiple) Field to export (accessible with get_fields with")), ToolInput(tag="in_field_url", input_type=Boolean(optional=True), prefix="--field_url", doc=InputDocumentation(doc="Include the field links")), ToolInput(tag="in_view_url", input_type=Boolean(optional=True), prefix="--view_url", doc=InputDocumentation(doc="Include other view links")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="(Optional) File to export the entry content")), ToolInput(tag="in_re_tri_eva", input_type=String(), position=0, doc=InputDocumentation(doc="ble as type"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ebisearch_Get_Entries_V0_1_0().translate("wdl", allow_empty_container=True)


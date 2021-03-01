from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Ebisearch_Get_Fields_V0_1_0 = CommandToolBuilder(tool="ebisearch_get_fields", base_command=["ebisearch", "get_fields"], inputs=[ToolInput(tag="in_domain", input_type=String(optional=True), prefix="--domain", doc=InputDocumentation(doc="Domain id in EBI (accessible with\nget_domains)")), ToolInput(tag="in_field_type", input_type=Boolean(optional=True), prefix="--field_type", doc=InputDocumentation(doc="[searchable|retrievable|sortable|facet|topterms]\nType fo field")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="(Optional) File to export the domain")), ToolInput(tag="in_information", input_type=String(), position=0, doc=InputDocumentation(doc="--help                          Show this message and exit."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ebisearch_Get_Fields_V0_1_0().translate("wdl", allow_empty_container=True)


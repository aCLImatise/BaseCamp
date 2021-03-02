from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Array

Phyluce_Probe_Get_Clusters_From_Taxa_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_get_clusters_from_taxa", base_command=["phyluce_probe_get_clusters_from_taxa"], inputs=[ToolInput(tag="in_clusters", input_type=Directory(optional=True), prefix="--clusters", doc=InputDocumentation(doc="The directory containing cluster files")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="The database to update")), ToolInput(tag="in_tax_a", input_type=Array(t=String(), optional=True), prefix="--taxa", doc=InputDocumentation(doc="The taxon overlaps to use\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Get_Clusters_From_Taxa_V0_1_0().translate("wdl", allow_empty_container=True)


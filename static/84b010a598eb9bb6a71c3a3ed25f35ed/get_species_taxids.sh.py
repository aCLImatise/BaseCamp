from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Get_Species_Taxids_Sh_V0_1_0 = CommandToolBuilder(tool="get_species_taxids.sh", base_command=["get_species_taxids.sh"], inputs=[ToolInput(tag="in_get_taxonomy_ids", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Get taxonomy IDs at or below input taxonomy ID level")), ToolInput(tag="in_scientific_name_common", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="<Scientific Name, Common Name or Keyword>\nGet taxonomy information for organism\n"))], outputs=[], container="quay.io/biocontainers/blast:2.10.1--pl526he19e7b1_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Species_Taxids_Sh_V0_1_0().translate("wdl")


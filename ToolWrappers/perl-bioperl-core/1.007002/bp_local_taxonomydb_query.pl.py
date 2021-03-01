from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bp_Local_Taxonomydb_Query_Pl_V0_1_0 = CommandToolBuilder(tool="bp_local_taxonomydb_query.pl", base_command=["bp_local_taxonomydb_query.pl"], inputs=[ToolInput(tag="in_taxonid", input_type=String(), position=0, doc=InputDocumentation(doc="DESCRIPTION"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Local_Taxonomydb_Query_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


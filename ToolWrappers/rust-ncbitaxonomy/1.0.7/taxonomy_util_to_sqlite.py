from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Taxonomy_Util_To_Sqlite_V0_1_0 = CommandToolBuilder(tool="taxonomy_util_to_sqlite", base_command=["taxonomy_util", "to_sqlite"], inputs=[ToolInput(tag="in_tax_prefix", input_type=File(optional=True), prefix="--tax_prefix", doc=InputDocumentation(doc="String to prepend to names of nodes.dmp and names.dmp")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxonomy_Util_To_Sqlite_V0_1_0().translate("wdl", allow_empty_container=True)


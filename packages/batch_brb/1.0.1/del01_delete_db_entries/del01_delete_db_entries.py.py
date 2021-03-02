from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Del01_Delete_Db_Entries_Py_V0_1_0 = CommandToolBuilder(tool="del01_delete_db_entries.py", base_command=["del01_delete_db_entries.py"], inputs=[ToolInput(tag="in_db", input_type=Int(optional=True), prefix="-db", doc=InputDocumentation(doc="SQLite3 database")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-name", doc=InputDocumentation(doc="Name of BLAST database")), ToolInput(tag="in_alias", input_type=Boolean(optional=True), prefix="-alias", doc=InputDocumentation(doc="BLAST database is an alias database, default= FALSE")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="-type", doc=InputDocumentation(doc="Data type either nucl or prot"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Del01_Delete_Db_Entries_Py_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Aliasdb_Pipeline_V0_1_0 = CommandToolBuilder(tool="aliasdb_pipeline", base_command=["aliasdb_pipeline"], inputs=[ToolInput(tag="in_csv", input_type=File(optional=True), prefix="-csv", doc=InputDocumentation(doc="csv file of parameters, required\ncsv must be in format: DBLIST_FILE, DBTYPE, TITLE, OUTPUT, SQLITE3_DATABASE\nThe following fields are optional, defualt values are shown, all other fields are required:\nSQLITE3_DB: default = accession_db.db\n"))], outputs=[ToolOutput(tag="out_csv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_csv", type_hint=File()), doc=OutputDocumentation(doc="csv file of parameters, required\ncsv must be in format: DBLIST_FILE, DBTYPE, TITLE, OUTPUT, SQLITE3_DATABASE\nThe following fields are optional, defualt values are shown, all other fields are required:\nSQLITE3_DB: default = accession_db.db\n"))], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aliasdb_Pipeline_V0_1_0().translate("wdl")


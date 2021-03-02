from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Delete_Db_V0_1_0 = CommandToolBuilder(tool="delete_db", base_command=["delete_db"], inputs=[ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="-csv", doc=InputDocumentation(doc="csv file of parameters, required\ncsv must be in format: BLAST_DB, SQLITE3_DB\nBLAST_DB: Required, name of BLAST database to delete\nSQLITE3_DB: Optional, SQLite3 database where data is stored, default = accession_db.db\n"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Delete_Db_V0_1_0().translate("wdl")


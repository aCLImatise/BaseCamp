from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Abyss_Db_Csv_Sqlite_Repository_V0_1_0 = CommandToolBuilder(tool="abyss_db_csv_SQLite_repository", base_command=["abyss-db-csv", "SQLite_repository"], inputs=[ToolInput(tag="in_table_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Db_Csv_Sqlite_Repository_V0_1_0().translate("wdl", allow_empty_container=True)


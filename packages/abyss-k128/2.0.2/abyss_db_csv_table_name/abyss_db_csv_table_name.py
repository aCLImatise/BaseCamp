from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Abyss_Db_Csv_Table_Name_V0_1_0 = CommandToolBuilder(tool="abyss_db_csv_table_name", base_command=["abyss-db-csv", "table_name"], inputs=[ToolInput(tag="in_abyss_db_csv", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sqlite_repository", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_table_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Db_Csv_Table_Name_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String

Emmtyper_Db_V0_1_0 = CommandToolBuilder(tool="emmtyper_db", base_command=["emmtyper-db"], inputs=[ToolInput(tag="in_db_folder", input_type=Float(optional=True), prefix="--db_folder", doc=InputDocumentation(doc="Where to update the DB  [default:\n/usr/local/lib/python3.7/site-packages/emmtyper/db]")), ToolInput(tag="in_email", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Emmtyper_Db_V0_1_0().translate("wdl", allow_empty_container=True)


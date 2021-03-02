from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Convertdb_Py_Sequences_V0_1_0 = CommandToolBuilder(tool="ConvertDb.py_sequences", base_command=["ConvertDb.py", "sequences"], inputs=[ToolInput(tag="in_convert_db_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertdb_Py_Sequences_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Index_Default_Ssu_Rrna_Db_Py_V0_1_0 = CommandToolBuilder(tool="index_default_ssu_rrna_db.py", base_command=["index_default_ssu_rrna_db.py"], inputs=[ToolInput(tag="in_ref_dir", input_type=File(optional=True), prefix="--ref_dir", doc=InputDocumentation(doc="Output dir. Default is $MATAM_DIR/db/")), ToolInput(tag="in_max_memory", input_type=Int(optional=True), prefix="--max_memory", doc=InputDocumentation(doc="Maximum memory to use (in MBi). Default is 10000 MBi\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Index_Default_Ssu_Rrna_Db_Py_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Evaluate_Contigtax_Py_V0_1_0 = CommandToolBuilder(tool="evaluate_contigtax.py", base_command=["evaluate_contigtax.py"], inputs=[ToolInput(tag="in_tax_dir", input_type=Directory(optional=True), prefix="--taxdir", doc=InputDocumentation(doc="Directory with ete3 sqlite database")), ToolInput(tag="in_dbname", input_type=File(optional=True), prefix="--dbname", doc=InputDocumentation(doc="Name of sqlite database file")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="contigtax assignment file with taxids (use --taxidout\nwith contigtax assign)")), ToolInput(tag="in_tax_file", input_type=String(), position=1, doc=InputDocumentation(doc="File mapping sequence id to true taxonomy id"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Evaluate_Contigtax_Py_V0_1_0().translate("wdl", allow_empty_container=True)


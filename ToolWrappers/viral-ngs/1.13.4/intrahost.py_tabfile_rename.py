from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Intrahost_Py_Tabfile_Rename_V0_1_0 = CommandToolBuilder(tool="intrahost.py_tabfile_rename", base_command=["intrahost.py", "tabfile_rename"], inputs=[ToolInput(tag="in_col_idx", input_type=Int(optional=True), prefix="--col_idx", doc=InputDocumentation(doc="Which column number to replace (0-based index).\n[default: 0]")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input flat file")), ToolInput(tag="in_map_file", input_type=String(), position=1, doc=InputDocumentation(doc="Map file. Two-column headerless file that maps input\nvalues to output values. This script will error if\nthere are values in inFile that do not exist in\nmapFile.")), ToolInput(tag="in_outfile", input_type=String(), position=2, doc=InputDocumentation(doc="Output flat file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Intrahost_Py_Tabfile_Rename_V0_1_0().translate("wdl", allow_empty_container=True)


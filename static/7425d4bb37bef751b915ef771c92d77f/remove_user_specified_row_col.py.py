from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Remove_User_Specified_Row_Col_Py_V0_1_0 = CommandToolBuilder(tool="remove_user_specified_row_col.py", base_command=["remove_user_specified_row_col.py"], inputs=[ToolInput(tag="in_rowfeature_dropped_rowid", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ROW ...], --row [ROW ...]\nRow/feature to be dropped - use rowID (can be left\nempty)")), ToolInput(tag="in_columnsample_dropped_beleft", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[COL ...], --col [COL ...]\nColumn/sample to be dropped - use column header(can be\nleft empty)")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_out_wide", input_type=File(optional=True), prefix="--outWide", doc=InputDocumentation(doc="Output file without specified rows/columns.\n"))], outputs=[ToolOutput(tag="out_out_wide", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_wide", type_hint=File()), doc=OutputDocumentation(doc="Output file without specified rows/columns.\n"))], container="quay.io/biocontainers/secimtools:21.3.4.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_User_Specified_Row_Col_Py_V0_1_0().translate("wdl")


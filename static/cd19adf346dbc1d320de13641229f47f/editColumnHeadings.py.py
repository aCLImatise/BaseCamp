from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Editcolumnheadings_Py_V0_1_0 = CommandToolBuilder(tool="editColumnHeadings.py", base_command=["editColumnHeadings.py"], inputs=[ToolInput(tag="in_file_location_text", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="File location for the text file.")), ToolInput(tag="in_columns_keep_order", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Columns to keep in the order to keep them in.")), ToolInput(tag="in_column_names_renaming", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Column names if renaming.")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of the output file.")), ToolInput(tag="in_output_file", input_type=String(), position=0, doc=InputDocumentation(doc="Cut, rearrange and rename columns in a tab-separated file."))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of the output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Editcolumnheadings_Py_V0_1_0().translate("wdl", allow_empty_container=True)


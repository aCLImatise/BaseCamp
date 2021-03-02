from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

O_Subsample_Matrix_File_V0_1_0 = CommandToolBuilder(tool="o_subsample_matrix_file", base_command=["o-subsample-matrix-file"], inputs=[ToolInput(tag="in_cols_to_remove", input_type=File(optional=True), prefix="--cols-to-remove", doc=InputDocumentation(doc="Columns to be removed from the matrix (one column id\nin each line)")), ToolInput(tag="in_rows_to_remove", input_type=File(optional=True), prefix="--rows-to-remove", doc=InputDocumentation(doc="Rows to be removed from the matrix (one row id in each\nline)")), ToolInput(tag="in_cols_to_keep", input_type=File(optional=True), prefix="--cols-to-keep", doc=InputDocumentation(doc="Columns to be kept in the subsampled matrix (one\ncolumn id in each line)")), ToolInput(tag="in_rows_to_keep", input_type=File(optional=True), prefix="--rows-to-keep", doc=InputDocumentation(doc="Rows to be kept in the subsampled matrix (one row id\nin each line)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Output file name\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file name\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Subsample_Matrix_File_V0_1_0().translate("wdl", allow_empty_container=True)


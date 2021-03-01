from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Shapeshiftmerge_V0_1_0 = CommandToolBuilder(tool="shapeshiftmerge", base_command=["shapeshiftmerge"], inputs=[ToolInput(tag="in_input_files", input_type=Array(t=String(), optional=True), prefix="--input_files", doc=InputDocumentation(doc="List of files that will be merged together. Files must\nhave appropriate extensions to be recognized properly.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="File path to which results are exported")), ToolInput(tag="in_output_file_type", input_type=File(optional=True), prefix="--output_file_type", doc=InputDocumentation(doc="Type of file to which results are exported. If not\nspecified, file type will be determined by the file\nextension given. Available choices are: CSV, TSV,\nJSON, Excel, HDF5, Parquet, MsgPack, Stata, Pickle,\nSQLite, ARFF, GCT, RMarkdown, JupyterNotebook")), ToolInput(tag="in_gzip", input_type=File(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Gzips the output file")), ToolInput(tag="in_on_column", input_type=String(optional=True), prefix="--on_column", doc=InputDocumentation(doc="Merge files on a specific column")), ToolInput(tag="in_how", input_type=String(optional=True), prefix="--how", doc=InputDocumentation(doc="Type of merge to perform. Options are left, right,\ninner, or outer,with outer being default behavior.\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to which results are exported")), ToolOutput(tag="out_gzip", output_type=File(optional=True), selector=InputSelector(input_to_select="in_gzip", type_hint=File()), doc=OutputDocumentation(doc="Gzips the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shapeshiftmerge_V0_1_0().translate("wdl", allow_empty_container=True)


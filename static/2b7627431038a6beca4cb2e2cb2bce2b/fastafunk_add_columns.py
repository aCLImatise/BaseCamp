from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Fastafunk_Add_Columns_V0_1_0 = CommandToolBuilder(tool="fastafunk_add_columns", base_command=["fastafunk", "add_columns"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Run with high verbosity (debug level logging)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)")), ToolInput(tag="in_in_metadata", input_type=File(optional=True), prefix="--in-metadata", doc=InputDocumentation(doc="ONE CSV table of metadata")), ToolInput(tag="in_in_data", input_type=File(optional=True), prefix="--in-data", doc=InputDocumentation(doc="One CSV table of additional data. Must have --index-\ncolumn in common with metadata")), ToolInput(tag="in_index_column", input_type=String(optional=True), prefix="--index-column", doc=InputDocumentation(doc="Column in the metadata files used to match rows")), ToolInput(tag="in_join_on", input_type=File(optional=True), prefix="--join-on", doc=InputDocumentation(doc="Column in the data file used to match rows")), ToolInput(tag="in_new_columns", input_type=File(optional=True), prefix="--new-columns", doc=InputDocumentation(doc="[<column> ...]\nColumn(s) in the in_data file to add to the metadata,\nif not provided, all columns added")), ToolInput(tag="in_out_metadata", input_type=File(optional=True), prefix="--out-metadata", doc=InputDocumentation(doc="A metadata file to write")), ToolInput(tag="in_where_column", input_type=String(optional=True), prefix="--where-column", doc=InputDocumentation(doc="=<regex> [<column>=<regex> ...]\nAdditional matches to columns e.g. if want to rename\n"))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)"))], container="quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastafunk_Add_Columns_V0_1_0().translate("wdl")


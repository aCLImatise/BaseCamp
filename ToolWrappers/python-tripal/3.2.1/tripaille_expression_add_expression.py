from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Tripaille_Expression_Add_Expression_V0_1_0 = CommandToolBuilder(tool="tripaille_expression_add_expression", base_command=["tripaille", "expression", "add_expression"], inputs=[ToolInput(tag="in_match_type", input_type=String(optional=True), prefix="--match_type", doc=InputDocumentation(doc="Match to features using either name or\nuniquename. Default to uniquename  [default:\nuniquename]")), ToolInput(tag="in_array_design_id", input_type=Int(optional=True), prefix="--array_design_id", doc=InputDocumentation(doc="The array design ID associated with this\nanalysis. (Non functional in Tripal2)")), ToolInput(tag="in_quantification_units", input_type=String(optional=True), prefix="--quantification_units", doc=InputDocumentation(doc="The units associated with the loaded values\n(ie, FPKM, RPKM, raw counts).")), ToolInput(tag="in_file_extension", input_type=File(optional=True), prefix="--file_extension", doc=InputDocumentation(doc="File extension for the file(s) to be loaded\ninto Chado. Do not include the '.'. Not\nrequired for matrix files.")), ToolInput(tag="in_start_regex", input_type=File(optional=True), prefix="--start_regex", doc=InputDocumentation(doc="A regular expression to describe the line that\noccurs before the start of the expression data.\nIf the file has no header, this is not needed.")), ToolInput(tag="in_stop_regex", input_type=File(optional=True), prefix="--stop_regex", doc=InputDocumentation(doc="A regular expression to describe the line that\noccurs after the end of the expression data. If\nthe file has no footer text, this is not\nneeded.")), ToolInput(tag="in_seq_type", input_type=Int(optional=True), prefix="--seq_type", doc=InputDocumentation(doc="Specify the feature type to associate the data\nwith. (Tripal3 only)")), ToolInput(tag="in_use_column", input_type=Boolean(optional=True), prefix="--use_column", doc=InputDocumentation(doc="Set if the expression file is a column file")), ToolInput(tag="in_no_wait", input_type=Boolean(optional=True), prefix="--no_wait", doc=InputDocumentation(doc="Do not wait for job to complete")), ToolInput(tag="in_file_path", input_type=String(), position=0, doc=InputDocumentation(doc="Add an expression file to tripal"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Expression_Add_Expression_V0_1_0().translate("wdl", allow_empty_container=True)


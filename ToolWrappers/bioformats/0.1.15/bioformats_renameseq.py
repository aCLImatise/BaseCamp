from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Bioformats_Renameseq_V0_1_0 = CommandToolBuilder(tool="bioformats_renameseq", base_command=["bioformats", "renameseq"], inputs=[ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="the input file is of the FASTA format")), ToolInput(tag="in_column", input_type=Int(optional=True), prefix="--column", doc=InputDocumentation(doc="the number of the column that contains sequence names\nto be changed staring from 1")), ToolInput(tag="in_revert", input_type=Boolean(optional=True), prefix="--revert", doc=InputDocumentation(doc="perform reverse renaming, that is, change original and\nnew names in the renaming table")), ToolInput(tag="in_no_description", input_type=Boolean(optional=True), prefix="--no_description", doc=InputDocumentation(doc="remove descriptions from FASTA sequence names")), ToolInput(tag="in_comment_char", input_type=File(optional=True), prefix="--comment_char", doc=InputDocumentation(doc="a character that designates comment lines in the\nspecified plain-text file")), ToolInput(tag="in_separator", input_type=File(optional=True), prefix="--separator", doc=InputDocumentation(doc="a symbol that separates columns in the specified\nplain-text file\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_renaming_table", input_type=String(), position=0, doc=InputDocumentation(doc="a file containing a table of original and new sequence")), ToolInput(tag="in_names", input_type=String(), position=1, doc=InputDocumentation(doc="input_file            a file to change sequence names in")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc="an output file with renamed sequences"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Renameseq_V0_1_0().translate("wdl", allow_empty_container=True)


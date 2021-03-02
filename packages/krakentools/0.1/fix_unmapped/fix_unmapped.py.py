from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String

Fix_Unmapped_Py_V0_1_0 = CommandToolBuilder(tool="fix_unmapped.py", base_command=["fix_unmapped.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Input file containing accession IDs to map. Multi-\ncolumn files accepted. Only accessions in the first\ncolumn will be mapped.")), ToolInput(tag="in_accession_two_taxid", input_type=Array(t=String(), optional=True), prefix="--accession2taxid", doc=InputDocumentation(doc="Accession2taxid reference mappings to search. NCBI\naccession2taxid format required: 4 columns with\naccessions in column 1 and taxonomy IDs in column 3.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="Output file with 2 tab-delimited columns for\naccessions and taxids")), ToolInput(tag="in_remaining", input_type=File(optional=True), prefix="--remaining", doc=InputDocumentation(doc="Name of text file containing non-found accessions from\ninput file\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file with 2 tab-delimited columns for\naccessions and taxids"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fix_Unmapped_Py_V0_1_0().translate("wdl", allow_empty_container=True)


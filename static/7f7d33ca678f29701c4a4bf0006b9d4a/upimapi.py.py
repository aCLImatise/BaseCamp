from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Upimapi_Py_V0_1_0 = CommandToolBuilder(tool="upimapi.py", base_command=["upimapi.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input filename - can be a list of IDs (one per line)\nor a BLAST TSV file - if so, specify with the --blast\nparameter. If no file is given as input, will read\nfrom command line input")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="filename of output")), ToolInput(tag="in_excel", input_type=Boolean(optional=True), prefix="--excel", doc=InputDocumentation(doc="Will produce output in EXCEL format (default is TSV)")), ToolInput(tag="in_annotation_columns", input_type=String(optional=True), prefix="--annotation-columns", doc=InputDocumentation(doc="List of UniProt columns to obtain information from")), ToolInput(tag="in_annotation_databases", input_type=String(optional=True), prefix="--annotation-databases", doc=InputDocumentation(doc="List of databases to cross-check with UniProt\ninformation")), ToolInput(tag="in_blast", input_type=Boolean(optional=True), prefix="--blast", doc=InputDocumentation(doc="If input file is in BLAST TSV format")), ToolInput(tag="in_full_id", input_type=Boolean(optional=True), prefix="--full-id", doc=InputDocumentation(doc="If IDs are in 'full' format: tr|XXX|XXX")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Output will be generated in FASTA format")), ToolInput(tag="in_step", input_type=Int(optional=True), prefix="--step", doc=InputDocumentation(doc="How many IDs to submit per request to the API (default\nis 1000)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="filename of output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Upimapi_Py_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Datafunk_Process_Gisaid_Sequence_Data_V0_1_0 = CommandToolBuilder(tool="datafunk_process_gisaid_sequence_data", base_command=["datafunk", "process_gisaid_sequence_data"], inputs=[ToolInput(tag="in_gisaidjson__input", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="OR GISAID.json, --input GISAID.fasta OR GISAID.json\nSequence data in FASTA/json format")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="FASTA format file to write, print to stdout if\nunspecified")), ToolInput(tag="in_exclude", input_type=File(optional=True), prefix="--exclude", doc=InputDocumentation(doc="A file that contains (anywhere) EPI_ISL_###### IDs to\nexclude (can provide many files, e.g. -e FILE1 -e\nFILE2 ...)")), ToolInput(tag="in_exclude_uk", input_type=Boolean(optional=True), prefix="--exclude-uk", doc=InputDocumentation(doc="Removes all GISAID entries with containing England,\nIreland, Scotland or Wales")), ToolInput(tag="in_exclude_undated", input_type=Boolean(optional=True), prefix="--exclude-undated", doc=InputDocumentation(doc="Removes all GISAID entries with an incomplete date"))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Process_Gisaid_Sequence_Data_V0_1_0().translate("wdl")


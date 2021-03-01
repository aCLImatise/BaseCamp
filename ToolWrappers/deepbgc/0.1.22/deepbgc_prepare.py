from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Deepbgc_Prepare_V0_1_0 = CommandToolBuilder(tool="deepbgc_prepare", base_command=["deepbgc", "prepare"], inputs=[ToolInput(tag="in_limit_to_record", input_type=String(optional=True), prefix="--limit-to-record", doc=InputDocumentation(doc="Process only specific record ID. Can be provided multiple times")), ToolInput(tag="in_prodigal_meta_mode", input_type=Boolean(optional=True), prefix="--prodigal-meta-mode", doc=InputDocumentation(doc="Run Prodigal in '-p meta' mode to enable detecting genes in short contigs")), ToolInput(tag="in_protein", input_type=Boolean(optional=True), prefix="--protein", doc=InputDocumentation(doc="Accept amino-acid protein sequences as input (experimental). Will treat each file as a single record with multiple proteins.")), ToolInput(tag="in_output_gbk", input_type=File(optional=True), prefix="--output-gbk", doc=InputDocumentation(doc="Output GenBank file path")), ToolInput(tag="in_output_tsv", input_type=File(optional=True), prefix="--output-tsv", doc=InputDocumentation(doc="Output TSV file path\n")), ToolInput(tag="in_inputs", input_type=String(), position=0, doc=InputDocumentation(doc="Input sequence file path(s) (FASTA/GenBank)"))], outputs=[ToolOutput(tag="out_output_gbk", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_gbk", type_hint=File()), doc=OutputDocumentation(doc="Output GenBank file path")), ToolOutput(tag="out_output_tsv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_tsv", type_hint=File()), doc=OutputDocumentation(doc="Output TSV file path\n"))], container="quay.io/biocontainers/deepbgc:0.1.22--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepbgc_Prepare_V0_1_0().translate("wdl")


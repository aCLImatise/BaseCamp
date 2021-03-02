from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Cooc_Mutbamscan_V0_1_0 = CommandToolBuilder(tool="cooc_mutbamscan", base_command=["cooc-mutbamscan"], inputs=[ToolInput(tag="in_samples", input_type=String(optional=True), prefix="--samples", doc=InputDocumentation(doc="V-pipe samples list tsv")), ToolInput(tag="in_cram_alignment_files", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="/CRAM [BAM/CRAM ...], --alignments BAM/CRAM [BAM/CRAM ...]\nalignment files")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="V-pipe work directory prefix for where to look at\nalign files when using TSV samples list")), ToolInput(tag="in_json", input_type=File(optional=True), prefix="--json", doc=InputDocumentation(doc="output results to as JSON file")), ToolInput(tag="in_yaml", input_type=File(optional=True), prefix="--yaml", doc=InputDocumentation(doc="output results to as yaml file")), ToolInput(tag="in_tsv", input_type=File(optional=True), prefix="--tsv", doc=InputDocumentation(doc="output results to as (raw) tsv file")), ToolInput(tag="in_dump", input_type=Boolean(optional=True), prefix="--dump", doc=InputDocumentation(doc="dump the python object to the terminal"))], outputs=[ToolOutput(tag="out_json", output_type=File(optional=True), selector=InputSelector(input_to_select="in_json", type_hint=File()), doc=OutputDocumentation(doc="output results to as JSON file")), ToolOutput(tag="out_yaml", output_type=File(optional=True), selector=InputSelector(input_to_select="in_yaml", type_hint=File()), doc=OutputDocumentation(doc="output results to as yaml file")), ToolOutput(tag="out_tsv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_tsv", type_hint=File()), doc=OutputDocumentation(doc="output results to as (raw) tsv file"))], container="quay.io/biocontainers/cojac:0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooc_Mutbamscan_V0_1_0().translate("wdl")


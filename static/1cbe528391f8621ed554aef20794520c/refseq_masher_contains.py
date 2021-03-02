from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, String

Refseq_Masher_Contains_V0_1_0 = CommandToolBuilder(tool="refseq_masher_contains", base_command=["refseq_masher", "contains"], inputs=[ToolInput(tag="in_mash_bin", input_type=File(optional=True), prefix="--mash-bin", doc=InputDocumentation(doc="Mash binary path (default='mash')")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file path (default='-'/stdout)")), ToolInput(tag="in_output_type", input_type=File(optional=True), prefix="--output-type", doc=InputDocumentation(doc="[tab|csv]      Output file type (tab|csv)")), ToolInput(tag="in_top_n_results", input_type=Int(optional=True), prefix="--top-n-results", doc=InputDocumentation(doc="Output top N results sorted by identity in\nascending order (default=0/all)")), ToolInput(tag="in_min_identity", input_type=Float(optional=True), prefix="--min-identity", doc=InputDocumentation(doc="Mash screen min identity to report\n(default=0.9)")), ToolInput(tag="in_max_p_value", input_type=Float(optional=True), prefix="--max-pvalue", doc=InputDocumentation(doc="Mash screen max p-value to report\n(default=0.01)")), ToolInput(tag="in_parallelism", input_type=Int(optional=True), prefix="--parallelism", doc=InputDocumentation(doc="Mash screen parallelism; number of threads to\nspawn (default=1)")), ToolInput(tag="in_screen", input_type=String(), position=0, doc=InputDocumentation(doc="Input is expected to be one or more FASTA/FASTQ files or one or more"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file path (default='-'/stdout)")), ToolOutput(tag="out_output_type", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_type", type_hint=File()), doc=OutputDocumentation(doc="[tab|csv]      Output file type (tab|csv)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refseq_Masher_Contains_V0_1_0().translate("wdl", allow_empty_container=True)


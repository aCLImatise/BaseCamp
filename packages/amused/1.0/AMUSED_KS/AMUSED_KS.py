from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Amused_Ks_V0_1_0 = CommandToolBuilder(tool="AMUSED_KS", base_command=["AMUSED-KS"], inputs=[ToolInput(tag="in__query_sequences", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="= query sequences")), ToolInput(tag="in_compare_seqs_background", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="= compare seqs to these background seqs")), ToolInput(tag="in__output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="= output file")), ToolInput(tag="in_max_nmer_consider", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="= max n-mer to consider [default=8]")), ToolInput(tag="in_smooth_data_how", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="= smooth data over how many bases to generate expected distribution for one-sample KS test (when no background set is included) [default=5]")), ToolInput(tag="in_number_cpu_use", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="= number of CPU threads to use [default=1]")), ToolInput(tag="in_ds", input_type=Boolean(optional=True), prefix="-ds", doc=InputDocumentation(doc="= double stranded (reverse complement sequences too)")), ToolInput(tag="in_one_p", input_type=Boolean(optional=True), prefix="-1p", doc=InputDocumentation(doc="= sequences not in fasta format: each line is a full sequence")), ToolInput(tag="in_nu", input_type=Boolean(optional=True), prefix="-nu", doc=InputDocumentation(doc="= no changing to upper case before scan (non ATGC bases are discarded)"))], outputs=[ToolOutput(tag="out__output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in__output_file", type_hint=File()), doc=OutputDocumentation(doc="= output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amused_Ks_V0_1_0().translate("wdl", allow_empty_container=True)


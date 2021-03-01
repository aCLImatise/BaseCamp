from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Smartdenovo_Pl_V0_1_0 = CommandToolBuilder(tool="smartdenovo.pl", base_command=["smartdenovo.pl"], inputs=[ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="output prefix [wtasm]")), ToolInput(tag="in_engine_overlaper_overlapperdmo", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="engine of overlaper, compressed kmer overlapper(zmo), dot matrix overlapper(dmo), [dmo]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [8]")), ToolInput(tag="in_kmer_length_overlapping", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length for overlapping [16]\nfor large genome as human, please use 17")), ToolInput(tag="in_min_read_length", input_type=Int(optional=True), prefix="-J", doc=InputDocumentation(doc="min read length [5000]")), ToolInput(tag="in_generate_consensus", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="generate consensus, [0]")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smartdenovo_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


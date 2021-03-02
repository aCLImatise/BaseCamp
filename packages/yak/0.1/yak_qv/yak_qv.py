from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Yak_Qv_V0_1_0 = CommandToolBuilder(tool="yak_qv", base_command=["yak", "qv"], inputs=[ToolInput(tag="in_min_sequence_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="min sequence length [0]")), ToolInput(tag="in_min_kmer_fraction", input_type=Float(optional=True), prefix="-f", doc=InputDocumentation(doc="min k-mer fraction [0.5]")), ToolInput(tag="in_false_positive_rate", input_type=Float(optional=True), prefix="-e", doc=InputDocumentation(doc="false positive rate [4e-05]")), ToolInput(tag="in_print_qv_sequence", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="print QV for each sequence")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [4]")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="-K", doc=InputDocumentation(doc="batch size [1g]")), ToolInput(tag="in_km_er_dot_hash", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/yak:0.1--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yak_Qv_V0_1_0().translate("wdl")

